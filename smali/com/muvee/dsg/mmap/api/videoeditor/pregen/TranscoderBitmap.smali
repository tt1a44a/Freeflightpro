.class public Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;
.super Ljava/lang/Object;
.source "TranscoderBitmap.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$a;
    }
.end annotation


# instance fields
.field private a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;

.field private b:Landroid/media/MediaFormat;

.field private c:Ljava/lang/String;

.field private d:Landroid/media/MediaCodec;

.field private e:Landroid/media/MediaExtractor;

.field private f:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$a;

.field private g:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;

.field private h:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/FrameReader;

.field private i:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;

.field private j:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/CodecOutputSurface;

.field private k:Z

.field private l:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$a;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$1;)V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->f:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$a;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->k:Z

    return-void
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->g:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;

    return-object p1
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;Lcom/muvee/dsg/mmap/api/videoeditor/pregen/FrameReader;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/FrameReader;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->h:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/FrameReader;

    return-object p1
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->i:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;

    return-object p1
.end method

.method private a()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->e:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 142
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->d:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 143
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->j:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/CodecOutputSurface;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/CodecOutputSurface;->release()V

    .line 144
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->h:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/FrameReader;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/FrameReader;->release()V

    .line 145
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->i:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;->release()V

    .line 146
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->g:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/EGLSetup;->release()V

    .line 148
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->l:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 151
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->c()V

    return-void
.end method

.method static synthetic b(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 155
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/CodecOutputSurface;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/CodecOutputSurface;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->j:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/CodecOutputSurface;

    .line 156
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->j:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/CodecOutputSurface;

    invoke-virtual {v0, p0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/CodecOutputSurface;->setUp(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->d:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->d:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->b:Landroid/media/MediaFormat;

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->j:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/CodecOutputSurface;

    invoke-virtual {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/CodecOutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 164
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->d:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 167
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->i:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TextureRender;

    return-object v0
.end method

.method private c()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->e:Landroid/media/MediaExtractor;

    .line 174
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->e:Landroid/media/MediaExtractor;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->videoFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->e:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    .line 178
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 179
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->e:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->b:Landroid/media/MediaFormat;

    .line 180
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->b:Landroid/media/MediaFormat;

    const-string v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->c:Ljava/lang/String;

    .line 181
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->c:Ljava/lang/String;

    const-string/jumbo v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->e:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 186
    :cond_0
    return-void

    .line 178
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 189
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

.method static synthetic d(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->b()V

    return-void
.end method

.method private e()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 232
    const-string v0, "com.muvee.dsg.mmap.api.videoeditor.pregen.Transcoder"

    const-string v1, "::pushFrames: %s"

    new-array v2, v13, [Ljava/lang/Object;

    const-string v3, "+"

    aput-object v3, v2, v12

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->timeList:Ljava/util/SortedSet;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    .line 235
    new-instance v7, Ljava/util/TreeSet;

    invoke-direct {v7}, Ljava/util/TreeSet;-><init>()V

    .line 237
    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 238
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->e:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    invoke-virtual {v2, v4, v5, v12}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 239
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->e:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->d:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 244
    invoke-interface {v7}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 245
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->e:Landroid/media/MediaExtractor;

    const-wide/16 v2, 0xa

    add-long/2addr v2, v10

    invoke-virtual {v0, v2, v3, v12}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 248
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->d:Landroid/media/MediaCodec;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 249
    if-ltz v1, :cond_2

    .line 250
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->e:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    .line 251
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->e:Landroid/media/MediaExtractor;

    aget-object v2, v8, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 252
    if-lez v3, :cond_3

    .line 253
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->d:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->e:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 254
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->e:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    .line 255
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->e:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v0

    if-lez v0, :cond_2

    .line 256
    invoke-interface {v7}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-nez v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->d:Landroid/media/MediaCodec;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 258
    if-ltz v1, :cond_1

    .line 259
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->d:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 269
    :catch_0
    move-exception v0

    .line 270
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 272
    const-string v0, "com.muvee.dsg.mmap.api.videoeditor.pregen.Transcoder"

    const-string v1, "::pushFrames: %s"

    new-array v2, v13, [Ljava/lang/Object;

    const-string v3, "--"

    aput-object v3, v2, v12

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :goto_2
    return-void

    .line 265
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->d:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 278
    :cond_4
    const-string v0, "com.muvee.dsg.mmap.api.videoeditor.pregen.Transcoder"

    const-string v1, "::pushFrames: %s"

    new-array v2, v13, [Ljava/lang/Object;

    const-string v3, "-"

    aput-object v3, v2, v12

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method static synthetic e(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->f()V

    return-void
.end method

.method private f()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 283
    new-instance v7, Ljava/util/TreeSet;

    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->timeList:Ljava/util/SortedSet;

    invoke-direct {v7, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    .line 284
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->d:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 286
    invoke-interface {v7}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 287
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->e:Landroid/media/MediaExtractor;

    const/4 v1, 0x2

    invoke-virtual {v0, v10, v11, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 290
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->d:Landroid/media/MediaCodec;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 291
    if-ltz v1, :cond_1

    .line 292
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->e:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    .line 293
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->e:Landroid/media/MediaExtractor;

    aget-object v2, v8, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 294
    if-lez v3, :cond_2

    .line 295
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->d:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->e:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 297
    invoke-interface {v7}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->d:Landroid/media/MediaCodec;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 299
    if-ltz v1, :cond_0

    .line 300
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->d:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 313
    const-string v0, "com.muvee.dsg.mmap.api.videoeditor.pregen.Transcoder"

    const-string v1, "::pushFrames: %s"

    new-array v2, v13, [Ljava/lang/Object;

    const-string v3, "--"

    aput-object v3, v2, v12

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :goto_1
    return-void

    .line 307
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->d:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 319
    :cond_3
    const-string v0, "com.muvee.dsg.mmap.api.videoeditor.pregen.Transcoder"

    const-string v1, "::pushFrames: %s"

    new-array v2, v13, [Ljava/lang/Object;

    const-string v3, "-"

    aput-object v3, v2, v12

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic f(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->e()V

    return-void
.end method

.method private g()V
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 325
    :cond_0
    monitor-enter p0

    .line 326
    :try_start_0
    iget-boolean v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->k:Z

    if-eqz v0, :cond_1

    .line 327
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    :goto_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->d:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 352
    monitor-enter p0

    .line 353
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 354
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 355
    return-void

    .line 329
    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 330
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 331
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->d:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v3, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    .line 332
    if-ltz v4, :cond_0

    .line 333
    iget v0, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->timeList:Ljava/util/SortedSet;

    iget-wide v6, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 334
    :goto_1
    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->f:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$a;

    monitor-enter v5

    .line 335
    :try_start_3
    iget-object v6, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->d:Landroid/media/MediaCodec;

    invoke-virtual {v6, v4, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 336
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
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 337
    if-eqz v0, :cond_2

    .line 339
    :try_start_4
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->f:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$a;

    iget-wide v6, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v6, v0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$a;->a:J

    .line 340
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->f:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$a;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 343
    :cond_2
    :goto_2
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 344
    iget v0, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 329
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :cond_3
    move v0, v2

    .line 333
    goto :goto_1

    .line 343
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    .line 354
    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    .line 341
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method static synthetic g(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->g()V

    return-void
.end method

.method static synthetic h(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->a()V

    return-void
.end method

.method static synthetic i(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$a;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->f:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$a;

    return-object v0
.end method

.method static synthetic j(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/CodecOutputSurface;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->j:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/CodecOutputSurface;

    return-object v0
.end method

.method static synthetic k(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;)Lcom/muvee/dsg/mmap/api/videoeditor/pregen/FrameReader;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->h:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/FrameReader;

    return-object v0
.end method

.method static synthetic l(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->l:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 410
    monitor-enter p0

    .line 411
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->k:Z

    .line 412
    monitor-exit p0

    .line 413
    return-void

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$3;

    invoke-direct {v1, p0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$3;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;Landroid/graphics/SurfaceTexture;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 407
    return-void
.end method

.method public performTranscode(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 58
    monitor-enter p0

    .line 59
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->k:Z

    .line 60
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 62
    const-string v2, "com.muvee.dsg.mmap.api.videoeditor.pregen.Transcoder"

    const-string v3, "::performTranscode: %s"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "+"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;

    .line 65
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->callBack:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack;

    if-eqz v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->callBack:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack;

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;->PRE:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, p0, v3, v4}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack;->onProgress(Ljava/lang/Object;Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;[Ljava/lang/Object;)V

    .line 69
    :cond_0
    iget-object v2, p1, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->saveMode:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$SaveMode;

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$SaveMode;->JPG:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$SaveMode;

    if-ne v2, v3, :cond_1

    .line 70
    iget v2, p1, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->outputWidth:I

    iget v3, p1, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->outputHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->l:Landroid/graphics/Bitmap;

    .line 73
    :cond_1
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$1;

    invoke-direct {v3, p0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$1;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;)V

    invoke-static {v2, v3}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 115
    monitor-enter p0

    .line 117
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 122
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 124
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$2;

    invoke-direct {v3, p0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap$2;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;)V

    invoke-static {v2, v3}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 131
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->callBack:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack;

    if-eqz v2, :cond_2

    .line 132
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->callBack:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack;

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;->POST:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v2, p0, v3, v4}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack;->onProgress(Ljava/lang/Object;Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam$CallBack$State;[Ljava/lang/Object;)V

    .line 135
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 136
    const-string v2, "com.muvee.dsg.mmap.api.videoeditor.pregen.Transcoder"

    const-string v3, "::performTranscode: %s TimeTaken=%d, Ave = %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "-"

    aput-object v5, v4, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscoderBitmap;->a:Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/TranscodeParam;->timeList:Ljava/util/SortedSet;

    invoke-interface {v6}, Ljava/util/SortedSet;->size()I

    move-result v6

    int-to-long v6, v6

    div-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void

    .line 60
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 118
    :catch_0
    move-exception v2

    .line 120
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 122
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
