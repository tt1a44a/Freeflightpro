.class public Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;
.super Ljava/lang/Object;
.source "SlowMotionVideoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a;,
        Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$b;,
        Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$OnCompletionListener;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$OnCompletionListener;

.field private c:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderInitParam;

.field private d:F

.field private e:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$b;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private g:[Landroid/os/Handler;

.field private h:Landroid/media/MediaCodec;

.field private i:Landroid/media/MediaMuxer;

.field private j:I

.field private k:Z

.field private l:J

.field private m:J

.field private n:J

.field private o:[B

.field private p:Landroid/media/MediaCodec;

.field private q:Landroid/media/MediaFormat;

.field private r:I

.field private s:Landroid/media/AudioRecord;


# direct methods
.method public constructor <init>(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-boolean v2, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->a:Z

    .line 80
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->d:F

    .line 82
    new-instance v0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$b;-><init>(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$1;)V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->e:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$b;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->f:Ljava/util/List;

    .line 163
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/os/Handler;

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->g:[Landroid/os/Handler;

    .line 624
    const/4 v0, -0x1

    iput v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->r:I

    .line 92
    iput-boolean p1, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->a:Z

    .line 94
    new-instance v0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a;

    invoke-direct {v0, p0, v2}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a;-><init>(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;I)V

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a;->start()V

    .line 95
    new-instance v0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a;-><init>(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;I)V

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a;->start()V

    .line 97
    iget-boolean v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->a:Z

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a;-><init>(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;I)V

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a;->start()V

    .line 99
    new-instance v0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a;-><init>(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;I)V

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a;->start()V

    .line 100
    new-instance v0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a;-><init>(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;I)V

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$a;->start()V

    .line 104
    :cond_0
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 223
    const-string v0, "com.example.realtimeslowmo.MediaSaver"

    const-string v1, "::startEncoder:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string/jumbo v1, "video/avc"

    .line 227
    :try_start_0
    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->h:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->c:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderInitParam;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderInitParam;->width:I

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->c:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderInitParam;

    iget v2, v2, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderInitParam;->height:I

    invoke-static {v1, v0, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 245
    const-string v1, "bitrate"

    const v2, 0x7a1200

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 246
    const-string v1, "frame-rate"

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 247
    const-string v1, "color-format"

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 254
    const-string v1, "i-frame-interval"

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 256
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->h:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v4, v4, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 258
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->h:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 260
    iput-object v4, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->i:Landroid/media/MediaMuxer;

    .line 263
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->g:[Landroid/os/Handler;

    aget-object v0, v0, v3

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 264
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 230
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderFrameParam;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->a(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderFrameParam;)V

    return-void
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;Lcom/muvee/dsg/mmap/api/smvr/a;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->a(Lcom/muvee/dsg/mmap/api/smvr/a;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderFrameParam;)V
    .locals 13

    .prologue
    const/4 v0, 0x0

    .line 353
    monitor-enter p0

    :try_start_0
    const-string v1, "com.example.realtimeslowmo.MediaSaver"

    const-string v2, "::addFrameToEncoder: %s , %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p1, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderFrameParam;->buffer:[B

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->c:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderInitParam;

    iget v1, v1, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderInitParam;->width:I

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->c:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderInitParam;

    iget v2, v2, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderInitParam;->height:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v3, v1, 0x2

    .line 357
    iget-object v1, p1, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderFrameParam;->buffer:[B

    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->c:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderInitParam;

    iget v1, v1, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderInitParam;->width:I

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->c:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderInitParam;

    iget v2, v2, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderInitParam;->height:I

    mul-int/2addr v1, v2

    :goto_0
    iget-object v2, p1, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderFrameParam;->buffer:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 359
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->o:[B

    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->c:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderInitParam;

    iget v4, v4, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderInitParam;->width:I

    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->c:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderInitParam;

    iget v5, v5, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderInitParam;->height:I

    mul-int/2addr v4, v5

    sub-int v4, v1, v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p1, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderFrameParam;->buffer:[B

    add-int/lit8 v6, v1, 0x1

    aget-byte v5, v5, v6

    aput-byte v5, v2, v4

    .line 360
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->o:[B

    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->c:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderInitParam;

    iget v4, v4, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderInitParam;->width:I

    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->c:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderInitParam;

    iget v5, v5, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderInitParam;->height:I

    mul-int/2addr v4, v5

    sub-int v4, v1, v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->o:[B

    array-length v5, v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-object v5, p1, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderFrameParam;->buffer:[B

    aget-byte v5, v5, v1

    aput-byte v5, v2, v4

    .line 358
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    :cond_0
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->h:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v12

    move v11, v0

    .line 365
    :goto_1
    iget-object v0, p1, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderFrameParam;->a:[J

    array-length v0, v0

    if-ge v11, v0, :cond_3

    .line 366
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->h:Landroid/media/MediaCodec;

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 367
    const-string v0, "com.example.realtimeslowmo.MediaSaver"

    const-string v2, "::addFrameToEncoder: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    if-ltz v1, :cond_1

    .line 369
    const-string v0, "com.example.realtimeslowmo.MediaSaver"

    const-string v2, "::addFrameToEncoder: buffer = %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderFrameParam;->buffer:[B

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v0, p1, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderFrameParam;->buffer:[B

    if-eqz v0, :cond_2

    .line 372
    aget-object v0, v12, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 374
    aget-object v0, v12, v1

    iget-object v2, p1, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderFrameParam;->buffer:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->c:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderInitParam;

    iget v5, v5, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderInitParam;->width:I

    iget-object v6, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->c:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderInitParam;

    iget v6, v6, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderInitParam;->height:I

    mul-int/2addr v5, v6

    invoke-virtual {v0, v2, v4, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 375
    aget-object v0, v12, v1

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->o:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->c:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderInitParam;

    iget v5, v5, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderInitParam;->width:I

    iget-object v6, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->c:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderInitParam;

    iget v6, v6, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderInitParam;->height:I

    mul-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v0, v2, v4, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 377
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->h:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    iget-object v4, p1, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderFrameParam;->a:[J

    aget-wide v4, v4, v11

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 378
    const-string v0, "com.example.realtimeslowmo.MediaSaver"

    const-string v1, "::addFrameToEncoder: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderFrameParam;->a:[J

    aget-wide v6, v5, v11

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_1
    :goto_2
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto/16 :goto_1

    .line 380
    :cond_2
    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->h:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, p1, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderFrameParam;->a:[J

    aget-wide v8, v0, v11

    const/4 v10, 0x4

    move v5, v1

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 386
    :cond_3
    :try_start_1
    iget-object v0, p1, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderFrameParam;->buffer:[B

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->a([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    monitor-exit p0

    return-void
.end method

.method private a(Lcom/muvee/dsg/mmap/api/smvr/a;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 572
    const-string v0, "com.example.realtimeslowmo.MediaSaver"

    const-string v1, "::addAudioFrame: audioTimeUs=%d,buffer=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, p1, Lcom/muvee/dsg/mmap/api/smvr/a;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v4, 0x1

    iget-object v5, p1, Lcom/muvee/dsg/mmap/api/smvr/a;->a:[B

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->p:Landroid/media/MediaCodec;

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 574
    if-ltz v1, :cond_0

    .line 577
    iget-object v0, p1, Lcom/muvee/dsg/mmap/api/smvr/a;->a:[B

    if-eqz v0, :cond_1

    .line 578
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->p:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 579
    aget-object v0, v0, v1

    iget-object v3, p1, Lcom/muvee/dsg/mmap/api/smvr/a;->a:[B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 580
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->p:Landroid/media/MediaCodec;

    iget-object v3, p1, Lcom/muvee/dsg/mmap/api/smvr/a;->a:[B

    array-length v3, v3

    iget-wide v4, p1, Lcom/muvee/dsg/mmap/api/smvr/a;->b:J

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->p:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0
.end method

.method private a([B)V
    .locals 2

    .prologue
    .line 766
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->f:Ljava/util/List;

    monitor-enter v1

    .line 767
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    monitor-exit v1

    .line 769
    return-void

    .line 768
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;Z)Z
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->k:Z

    return p1
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;)[Landroid/os/Handler;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->g:[Landroid/os/Handler;

    return-object v0
.end method

.method private b()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 269
    :cond_0
    :goto_0
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 270
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->h:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 272
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->h:Landroid/media/MediaCodec;

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v1, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    .line 274
    if-ltz v3, :cond_0

    .line 275
    const-string v0, "com.example.realtimeslowmo.MediaSaver"

    const-string v4, "::startEncoderOutput: %d , %d , %d , %d"

    new-array v5, v12, [Ljava/lang/Object;

    iget v6, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    iget v6, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    const/4 v6, 0x2

    iget-wide v8, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->i:Landroid/media/MediaMuxer;

    if-nez v0, :cond_2

    .line 279
    :try_start_0
    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->c:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderInitParam;

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderInitParam;->outputFile:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->i:Landroid/media/MediaMuxer;

    .line 280
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->i:Landroid/media/MediaMuxer;

    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->h:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->j:I

    .line 282
    iget-boolean v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->a:Z

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->i:Landroid/media/MediaMuxer;

    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->q:Landroid/media/MediaFormat;

    invoke-virtual {v0, v4}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->r:I

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->i:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :cond_2
    :goto_1
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 297
    iget v4, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput v4, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 298
    iput v10, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 299
    iget-wide v4, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v4, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 300
    iget v4, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 302
    aget-object v4, v2, v3

    iget v5, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 305
    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->h:Landroid/media/MediaCodec;

    invoke-virtual {v4, v3, v10}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 307
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v12, :cond_3

    .line 311
    const-string v0, "com.example.realtimeslowmo.MediaSaver"

    const-string v1, "::startEncoderOutput:end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->h:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 327
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->h:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 329
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->i:Landroid/media/MediaMuxer;

    monitor-enter v1

    .line 334
    :try_start_1
    const-string v0, "com.example.realtimeslowmo.MediaSaver"

    const-string v2, "::startEncoderOutput:closing"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->i:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 336
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->i:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->i:Landroid/media/MediaMuxer;

    .line 338
    const-string v0, "com.example.realtimeslowmo.MediaSaver"

    const-string v2, "::startEncoderOutput:closed"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 341
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->e:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$b;

    monitor-enter v1

    .line 342
    :try_start_2
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->e:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$b;

    iget v2, v0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$b;->a:I

    add-int/lit8 v2, v2, 0x20

    iput v2, v0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$b;->a:I

    .line 343
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->d()V

    .line 344
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 349
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 290
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 316
    :cond_3
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->i:Landroid/media/MediaMuxer;

    monitor-enter v1

    .line 318
    :try_start_3
    const-string v4, "com.example.realtimeslowmo.MediaSaver"

    const-string v5, "::startEncoderOutput: adding timeUs=%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-wide v8, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 319
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 318
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->i:Landroid/media/MediaMuxer;

    iget v5, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->j:I

    aget-object v2, v2, v3

    invoke-virtual {v4, v5, v2, v0}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 322
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 339
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 344
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method static synthetic b(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->a()V

    return-void
.end method

.method private c()V
    .locals 11

    .prologue
    const/16 v10, 0x800

    const/16 v3, 0x10

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 393
    iput-boolean v1, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->k:Z

    .line 395
    const v0, 0xac44

    invoke-static {v0, v3, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    .line 397
    new-instance v0, Landroid/media/AudioRecord;

    const v2, 0xac44

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->s:Landroid/media/AudioRecord;

    .line 403
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->s:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 407
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->k:Z

    if-nez v0, :cond_3

    .line 408
    new-array v2, v10, [B

    .line 410
    const-string v0, "com.example.realtimeslowmo.MediaSaver"

    const-string v3, "::startAudioRecorder:before"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->s:Landroid/media/AudioRecord;

    invoke-virtual {v0, v2, v1, v10}, Landroid/media/AudioRecord;->read([BII)I

    move-result v3

    .line 412
    const-string v0, "com.example.realtimeslowmo.MediaSaver"

    const-string v5, "::startAudioRecorder:after"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->e:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$b;

    monitor-enter v5

    .line 416
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->e:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$b;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$b;->a:I

    if-ne v0, v6, :cond_2

    move v0, v6

    .line 417
    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    if-eqz v0, :cond_0

    .line 420
    const-string v0, "com.example.realtimeslowmo.MediaSaver"

    const-string v5, "::startAudioRecorder: %d"

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v1

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    new-instance v0, Lcom/muvee/dsg/mmap/api/smvr/a;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/smvr/a;-><init>()V

    .line 424
    iput-object v2, v0, Lcom/muvee/dsg/mmap/api/smvr/a;->a:[B

    .line 425
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v8, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->l:J

    sub-long/2addr v2, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v2, v8

    iput-wide v2, v0, Lcom/muvee/dsg/mmap/api/smvr/a;->b:J

    .line 427
    const-string v2, "com.example.realtimeslowmo.MediaSaver"

    const-string v3, "::startAudioRecorder: audioTimeUd=%d"

    new-array v5, v6, [Ljava/lang/Object;

    iget-wide v8, v0, Lcom/muvee/dsg/mmap/api/smvr/a;->b:J

    .line 428
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v1

    .line 427
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 433
    const/16 v3, 0xe

    iput v3, v2, Landroid/os/Message;->what:I

    .line 434
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 436
    iget v3, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->d:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    .line 437
    const/high16 v3, 0x45000000    # 2048.0f

    iget v5, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->d:F

    div-float/2addr v3, v5

    float-to-int v3, v3

    new-array v3, v3, [B

    iput-object v3, v0, Lcom/muvee/dsg/mmap/api/smvr/a;->a:[B

    .line 440
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->g:[Landroid/os/Handler;

    aget-object v0, v0, v4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 416
    goto :goto_1

    .line 417
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 445
    :cond_3
    const-string v0, "com.example.realtimeslowmo.MediaSaver"

    const-string v1, "::startAudioRecorder:closing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->s:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 447
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->s:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 448
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->s:Landroid/media/AudioRecord;

    .line 449
    const-string v0, "com.example.realtimeslowmo.MediaSaver"

    const-string v1, "::startAudioRecorder:closed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->e:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$b;

    monitor-enter v1

    .line 452
    :try_start_2
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->e:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$b;

    iget v2, v0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$b;->a:I

    add-int/lit8 v2, v2, 0x8

    iput v2, v0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$b;->a:I

    .line 453
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->d()V

    .line 454
    monitor-exit v1

    .line 456
    return-void

    .line 454
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method static synthetic c(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->b()V

    return-void
.end method

.method private d()V
    .locals 5

    .prologue
    .line 460
    const-string v0, "com.example.realtimeslowmo.MediaSaver"

    const-string v1, "::onStopRecordingState: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->e:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$b;

    iget v4, v4, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$b;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->e:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$b;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$b;->a:I

    and-int/lit8 v0, v0, 0x38

    const/16 v1, 0x38

    if-ne v0, v1, :cond_0

    .line 462
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->b:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 463
    const-string v0, "com.example.realtimeslowmo.MediaSaver"

    const-string v1, "::onStopRecordingState:before call back"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->b:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$OnCompletionListener;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->c:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderInitParam;

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderInitParam;->outputFile:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$OnCompletionListener;->onCompletion(Ljava/lang/String;)V

    .line 465
    const-string v0, "com.example.realtimeslowmo.MediaSaver"

    const-string v1, "::onStopRecordingState:after call back"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->f()V

    return-void
.end method

.method private e()V
    .locals 12

    .prologue
    .line 473
    const-string v0, "com.example.realtimeslowmo.MediaSaver"

    const-string v1, "::startAudioEncoderOutput:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const-wide/16 v0, 0x0

    .line 480
    :cond_0
    :goto_0
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 481
    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->p:Landroid/media/MediaCodec;

    const-wide/16 v4, -0x1

    invoke-virtual {v3, v2, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    .line 482
    if-ltz v3, :cond_0

    .line 483
    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->p:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    iput-object v4, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->q:Landroid/media/MediaFormat;

    .line 486
    const-string v4, "com.example.realtimeslowmo.MediaSaver"

    const-string v5, "::startAudioEncoderOutput: audioTimeUs=%d,%d,%d,%d,%d,bufferInfo.flags=%d"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-wide v8, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 487
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget v8, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->r:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget v8, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->j:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget v8, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    iget v8, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    iget v8, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 486
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->i:Landroid/media/MediaMuxer;

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->r:I

    if-ltz v4, :cond_2

    .line 499
    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->p:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 518
    new-instance v5, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v5}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 519
    const/4 v6, 0x0

    iput v6, v5, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 520
    const/4 v6, 0x0

    iput v6, v5, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 521
    iput-wide v0, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 522
    iget v6, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput v6, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 524
    aget-object v6, v4, v3

    iget v7, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 528
    const-string v6, "com.example.realtimeslowmo.MediaSaver"

    const-string v7, "::startAudioEncoderOutput: audioTimeUs=%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-wide v10, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 529
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    .line 528
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    const/4 v6, 0x4

    if-ne v2, v6, :cond_1

    .line 556
    const-string v0, "com.example.realtimeslowmo.MediaSaver"

    const-string v1, "::startAudioEncoderOutput:closing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->p:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 558
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->p:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 559
    const-string v0, "com.example.realtimeslowmo.MediaSaver"

    const-string v1, "::startAudioEncoderOutput:closed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->e:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$b;

    monitor-enter v1

    .line 562
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->e:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$b;

    iget v2, v0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$b;->a:I

    add-int/lit8 v2, v2, 0x10

    iput v2, v0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$b;->a:I

    .line 563
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->d()V

    .line 564
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 568
    return-void

    .line 536
    :cond_1
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->i:Landroid/media/MediaMuxer;

    monitor-enter v2

    .line 538
    :try_start_1
    const-string v6, "com.example.realtimeslowmo.MediaSaver"

    const-string v7, "::startAudioEncoderOutput: adding audioTimeUs=%d,audioTrack=%d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-wide v10, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 539
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget v10, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->r:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 538
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v6, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->i:Landroid/media/MediaMuxer;

    iget v7, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->r:I

    aget-object v4, v4, v3

    invoke-virtual {v6, v7, v4, v5}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 543
    const v4, 0x46b567e9

    .line 544
    long-to-float v0, v0

    add-float/2addr v0, v4

    float-to-long v0, v0

    .line 545
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 552
    :cond_2
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->p:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_0

    .line 545
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 564
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method static synthetic e(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->e()V

    return-void
.end method

.method private f()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 595
    const-string v0, "com.example.realtimeslowmo.MediaSaver"

    const-string v1, "::startAudioEncoder:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 598
    const-string v1, "mime"

    const-string v2, "audio/mp4a-latm"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const-string v1, "aac-profile"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 600
    const-string/jumbo v1, "sample-rate"

    const v2, 0xac44

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 601
    const-string v1, "channel-count"

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 602
    const-string v1, "bitrate"

    const v2, 0x1f400

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 603
    const-string v1, "max-input-size"

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 607
    :try_start_0
    const-string v1, "audio/mp4a-latm"

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->p:Landroid/media/MediaCodec;

    .line 608
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->p:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 609
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->p:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    :goto_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->g:[Landroid/os/Handler;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 616
    return-void

    .line 610
    :catch_0
    move-exception v0

    .line 611
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic f(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->c()V

    return-void
.end method

.method static synthetic g(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->a:Z

    return v0
.end method

.method static synthetic h(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;)Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$b;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->e:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$b;

    return-object v0
.end method

.method static synthetic i(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;)J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->l:J

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized addFrame(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderFrameParam;)V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    .line 715
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->e:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$b;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$b;->a:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->e:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$b;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$b;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 716
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 717
    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 718
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 719
    iget-wide v2, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->m:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 720
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->l:J

    .line 721
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->m:J

    .line 722
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->n:J

    .line 723
    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->n:J

    aput-wide v4, v1, v2

    iput-object v1, p1, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderFrameParam;->a:[J

    .line 755
    :goto_0
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->g:[Landroid/os/Handler;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 763
    :goto_1
    monitor-exit p0

    return-void

    .line 725
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->l:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 726
    iget-wide v4, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->m:J

    sub-long v4, v2, v4

    long-to-float v1, v4

    iget v4, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->d:F

    div-float/2addr v1, v4

    .line 748
    iget-wide v4, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->n:J

    long-to-float v4, v4

    add-float/2addr v1, v4

    float-to-long v4, v1

    iput-wide v4, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->n:J

    .line 749
    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->n:J

    aput-wide v6, v1, v4

    iput-object v1, p1, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderFrameParam;->a:[J

    .line 751
    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->m:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 715
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 758
    :cond_2
    :try_start_2
    iget-object v0, p1, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderFrameParam;->buffer:[B

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->a([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public getOnCompletionListener()Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$OnCompletionListener;
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->b:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$OnCompletionListener;

    return-object v0
.end method

.method public getRecordringSpeed()F
    .locals 1

    .prologue
    .line 789
    iget v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->d:F

    return v0
.end method

.method public getUsedByteBuffer()[B
    .locals 3

    .prologue
    .line 778
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->f:Ljava/util/List;

    monitor-enter v1

    .line 779
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->f:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 781
    monitor-exit v1

    .line 783
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 785
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public init(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderInitParam;)V
    .locals 3

    .prologue
    .line 178
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->c:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderInitParam;

    .line 180
    new-instance v0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$1;

    invoke-direct {v0, p0}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$1;-><init>(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;)V

    .line 215
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 217
    iget v0, p1, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderInitParam;->height:I

    iget v1, p1, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorderInitParam;->width:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->o:[B

    .line 219
    return-void
.end method

.method public setOnCompletionListener(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$OnCompletionListener;)V
    .locals 0

    .prologue
    .line 812
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->b:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$OnCompletionListener;

    .line 813
    return-void
.end method

.method public setRecordingSpeed(F)V
    .locals 0

    .prologue
    .line 797
    iput p1, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->d:F

    .line 798
    return-void
.end method

.method public startRecord()V
    .locals 4

    .prologue
    .line 633
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->e:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$b;

    monitor-enter v1

    .line 635
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->e:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$b;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$b;->a:I

    if-eqz v0, :cond_0

    .line 636
    monitor-exit v1

    .line 645
    :goto_0
    return-void

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->e:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$b;

    const/4 v2, 0x1

    iput v2, v0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$b;->a:I

    .line 642
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->setRecordingSpeed(F)V

    .line 643
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->m:J

    .line 644
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopRecord()V
    .locals 4

    .prologue
    .line 653
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->e:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$b;

    monitor-enter v1

    .line 655
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->e:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$b;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$b;->a:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 656
    monitor-exit v1

    .line 704
    :goto_0
    return-void

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;->e:Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$b;

    const/4 v2, 0x2

    iput v2, v0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$b;->a:I

    .line 662
    new-instance v0, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$2;

    invoke-direct {v0, p0}, Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder$2;-><init>(Lcom/muvee/dsg/mmap/api/smvr/SlowMotionVideoRecorder;)V

    .line 698
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 700
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
