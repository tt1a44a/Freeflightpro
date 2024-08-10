.class public Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;
.super Ljava/lang/Object;
.source "Transcoder.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$a;
    }
.end annotation


# instance fields
.field private a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;

.field private b:Landroid/media/MediaFormat;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Landroid/media/MediaCodec;

.field private g:Landroid/media/MediaExtractor;

.field private h:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$a;

.field private i:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;

.field private j:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;

.field private k:Landroid/media/MediaCodec;

.field private l:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/CodecOutputSurface;

.field private m:Landroid/view/Surface;

.field private n:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$a;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$1;)V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->h:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$a;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->n:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;I)I
    .locals 0

    .prologue
    .line 25
    iput p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->d:I

    return p1
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->i:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;

    return-object p1
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->j:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;

    return-object p1
.end method

.method private a()V
    .locals 5

    .prologue
    .line 116
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/CodecOutputSurface;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/CodecOutputSurface;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->l:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/CodecOutputSurface;

    .line 117
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->l:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/CodecOutputSurface;

    invoke-virtual {v0, p0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/CodecOutputSurface;->setUp(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->f:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->f:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->b:Landroid/media/MediaFormat;

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->l:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/CodecOutputSurface;

    invoke-virtual {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/CodecOutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 125
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->f:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 128
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->b()V

    return-void
.end method

.method static synthetic b(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;I)I
    .locals 0

    .prologue
    .line 25
    iput p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->e:I

    return p1
.end method

.method static synthetic b(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;)Landroid/media/MediaFormat;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->b:Landroid/media/MediaFormat;

    return-object v0
.end method

.method private b()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->g:Landroid/media/MediaExtractor;

    .line 135
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->g:Landroid/media/MediaExtractor;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->videoFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->g:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    .line 139
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 140
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->g:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->b:Landroid/media/MediaFormat;

    .line 141
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->b:Landroid/media/MediaFormat;

    const-string v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->c:Ljava/lang/String;

    .line 142
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->c:Ljava/lang/String;

    const-string/jumbo v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->g:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 147
    :cond_0
    return-void

    .line 139
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;)I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->d:I

    return v0
.end method

.method private c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gl.thread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;)I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->e:I

    return v0
.end method

.method private d()V
    .locals 10

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 155
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->f:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 156
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->g:Landroid/media/MediaExtractor;

    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->timeList:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 158
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->g:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-gez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->g:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v6, v7, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->timeList:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/Long;

    .line 166
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->f:Landroid/media/MediaCodec;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 167
    if-ltz v1, :cond_1

    .line 168
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->g:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    .line 169
    const-string v0, "com.muvee.dsg.mmap.api.videoeditor.pregen.Transcoder"

    const-string v2, "::pushFrames: sampleTime=%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v4, v2

    if-lez v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->f:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 189
    :goto_1
    return-void

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->g:Landroid/media/MediaExtractor;

    aget-object v2, v8, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 177
    if-lez v3, :cond_3

    .line 178
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->f:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->g:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 179
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->g:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 181
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->f:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic e(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->j:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;

    return-object v0
.end method

.method private e()V
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 194
    :cond_0
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 195
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->f:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v3, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    .line 196
    if-ltz v4, :cond_0

    .line 197
    iget v0, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->timeList:Ljava/util/SortedSet;

    iget-wide v6, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 198
    :goto_0
    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->h:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$a;

    monitor-enter v5

    .line 199
    :try_start_0
    iget-object v6, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->f:Landroid/media/MediaCodec;

    invoke-virtual {v6, v4, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 200
    const-string v4, "com.muvee.dsg.mmap.api.videoeditor.pregen.Transcoder"

    const-string v6, "::pullFrames: sampleTime=%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-wide v10, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    if-eqz v0, :cond_1

    .line 203
    :try_start_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->h:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$a;

    iget-wide v6, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v6, v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$a;->a:J

    .line 204
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->h:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$a;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    iget v0, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 209
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->k:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 215
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->f:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 216
    return-void

    :cond_2
    move v0, v2

    .line 197
    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 205
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private f()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->k:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->c:Ljava/lang/String;

    iget v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->d:I

    iget v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->e:I

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 227
    const-string v1, "bitrate"

    iget v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->d:I

    iget v3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->e:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 228
    const-string v1, "frame-rate"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 229
    const-string v1, "color-format"

    const v2, 0x7f000789

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 230
    const-string v1, "i-frame-interval"

    invoke-virtual {v0, v1, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 245
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->k:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v5, v5, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 246
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->k:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->m:Landroid/view/Surface;

    .line 248
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->i:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->m:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->createSurface(Ljava/lang/Object;)V

    .line 249
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->i:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->m:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->makeCurrent(Ljava/lang/Object;)V

    .line 251
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->k:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 253
    const-string v0, "encoder.output.thread"

    new-instance v1, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$2;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$2;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 264
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic f(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->a()V

    return-void
.end method

.method private g()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    .line 268
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->k:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 270
    :cond_0
    :goto_0
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->k:Landroid/media/MediaCodec;

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v2, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    .line 273
    if-lez v1, :cond_2

    .line 275
    const-string v3, "com.muvee.dsg.mmap.api.videoeditor.pregen.Transcoder"

    const-string v4, "::videoEncoderOutput: sampleTime=%d,%d,%d,%s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-wide v8, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget v7, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->k:Landroid/media/MediaCodec;

    invoke-virtual {v7}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->k:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 282
    :try_start_1
    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->outputFileFormat:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 283
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 285
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 287
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 289
    aget-object v5, v0, v1

    iget v6, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 290
    aget-object v5, v0, v1

    iget v6, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 292
    aget-object v1, v0, v1

    invoke-virtual {v4, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 294
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V

    .line 295
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 297
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->callBack:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack;

    if-eqz v1, :cond_1

    .line 298
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->callBack:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack;

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;->PROCESS:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v1, p0, v3, v4}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack;->onProgress(Ljava/lang/Object;Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 309
    :cond_1
    :goto_1
    :try_start_2
    iget v1, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v10, :cond_0

    .line 320
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->k:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 321
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->k:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 323
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->n:Ljava/lang/Object;

    monitor-enter v1

    .line 324
    :try_start_3
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->n:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 325
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 327
    return-void

    .line 301
    :catch_0
    move-exception v1

    .line 303
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 316
    :catch_1
    move-exception v1

    .line 317
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    .line 304
    :catch_2
    move-exception v1

    .line 306
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 313
    :cond_2
    const/4 v2, -0x3

    if-ne v1, v2, :cond_0

    .line 314
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->k:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v0

    goto/16 :goto_0

    .line 325
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method

.method static synthetic g(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->f()V

    return-void
.end method

.method static synthetic h(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->d()V

    return-void
.end method

.method static synthetic i(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->e()V

    return-void
.end method

.method static synthetic j(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->g()V

    return-void
.end method

.method static synthetic k(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$a;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->h:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$a;

    return-object v0
.end method

.method static synthetic l(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;)Landroid/view/Surface;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->m:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic m(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->i:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;

    return-object v0
.end method

.method static synthetic n(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/CodecOutputSurface;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->l:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/CodecOutputSurface;

    return-object v0
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$3;

    invoke-direct {v1, p0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$3;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;Landroid/graphics/SurfaceTexture;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 347
    return-void
.end method

.method public performTranscode(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 55
    const-string v0, "com.muvee.dsg.mmap.api.videoeditor.pregen.Transcoder"

    const-string v1, "::performTranscode: %s"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "+"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;

    .line 58
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->callBack:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->callBack:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack;

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;->PRE:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, p0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack;->onProgress(Ljava/lang/Object;Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;[Ljava/lang/Object;)V

    .line 62
    :cond_0
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$1;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder$1;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 98
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->n:Ljava/lang/Object;

    monitor-enter v1

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->n:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->callBack:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/Transcoder;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->callBack:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack;

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;->POST:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, p0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack;->onProgress(Ljava/lang/Object;Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;[Ljava/lang/Object;)V

    .line 111
    :cond_1
    const-string v0, "com.muvee.dsg.mmap.api.videoeditor.pregen.Transcoder"

    const-string v1, "::performTranscode: %s"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "-"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 103
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
