.class public Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder;
.super Ljava/lang/Object;
.source "AOSAudioEncoder.java"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:Ljava/lang/String;

.field private e:Landroid/media/MediaCodec;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const v0, 0xac44

    iput v0, p0, Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder;->a:I

    .line 20
    const/4 v0, 0x2

    iput v0, p0, Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder;->b:I

    .line 21
    iget v0, p0, Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder;->b:I

    mul-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder;->c:I

    .line 22
    const-string v0, "audio/mp4a-latm"

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder;Lcom/muvee/dsg/mmap/api/encoder/audio/AudioEncoderCallBack;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder;->a(Lcom/muvee/dsg/mmap/api/encoder/audio/AudioEncoderCallBack;)V

    return-void
.end method

.method private a(Lcom/muvee/dsg/mmap/api/encoder/audio/AudioEncoderCallBack;)V
    .locals 5

    .prologue
    .line 39
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 40
    const-string v1, "mime"

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v1, "aac-profile"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 42
    const-string/jumbo v1, "sample-rate"

    iget v2, p0, Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 43
    const-string v1, "channel-count"

    iget v2, p0, Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 44
    const-string v1, "bitrate"

    const v2, 0x1f400

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 45
    const-string v1, "max-input-size"

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 48
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :try_start_1
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder;->e:Landroid/media/MediaCodec;

    .line 50
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder;->e:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 51
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder;->e:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 53
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :goto_0
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 61
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder;->e:Landroid/media/MediaCodec;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    .line 62
    if-ltz v1, :cond_1

    .line 65
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder;->e:Landroid/media/MediaCodec;

    invoke-interface {p1, v2, v1, v0}, Lcom/muvee/dsg/mmap/api/encoder/audio/AudioEncoderCallBack;->onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V

    .line 66
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder;->e:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 68
    iget v1, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 77
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder;->e:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 79
    return-void

    .line 53
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 71
    :cond_1
    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    .line 72
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder;->e:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder;->e:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/muvee/dsg/mmap/api/encoder/audio/AudioEncoderCallBack;->onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    goto :goto_1
.end method


# virtual methods
.method public addAudioFrame(Ljava/nio/ByteBuffer;II)V
    .locals 7

    .prologue
    .line 111
    :goto_0
    monitor-enter p0

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder;->e:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 113
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :try_start_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder;->e:Landroid/media/MediaCodec;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 125
    if-eqz p1, :cond_1

    .line 126
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder;->e:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 127
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 128
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 129
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 130
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder;->e:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const/4 v6, 0x0

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    :goto_1
    return-void

    .line 116
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    :goto_2
    :try_start_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 132
    :cond_1
    :try_start_5
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder;->e:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 134
    :catch_1
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public addAudioFrame([BII)V
    .locals 7

    .prologue
    .line 83
    :goto_0
    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder;->e:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 85
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :try_start_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder;->e:Landroid/media/MediaCodec;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 97
    if-eqz p1, :cond_1

    .line 98
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder;->e:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 99
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 100
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder;->e:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const/4 v6, 0x0

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    :goto_1
    return-void

    .line 88
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    :goto_2
    :try_start_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 102
    :cond_1
    :try_start_5
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder;->e:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 104
    :catch_1
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public prepare(Lcom/muvee/dsg/mmap/api/encoder/audio/AudioEncoderCallBack;)V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio.encoder.thread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder$1;

    invoke-direct {v1, p0, p1}, Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder$1;-><init>(Lcom/muvee/dsg/mmap/api/encoder/audio/AOSAudioEncoder;Lcom/muvee/dsg/mmap/api/encoder/audio/AudioEncoderCallBack;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 36
    return-void
.end method
