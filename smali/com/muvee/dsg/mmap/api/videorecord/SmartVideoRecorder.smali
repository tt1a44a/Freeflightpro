.class public Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;
.super Ljava/lang/Object;
.source "SmartVideoRecorder.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;,
        Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$a;,
        Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;,
        Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$SmartVideoRecorderCallBack;
    }
.end annotation


# instance fields
.field private A:J

.field private B:[Ljava/nio/ByteBuffer;

.field a:Lcom/muvee/dsg/mmap/api/resampler/ReSampler;

.field b:Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;

.field c:Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;

.field d:J

.field e:Ljava/nio/ByteBuffer;

.field private f:[Landroid/os/Handler;

.field private g:Landroid/media/MediaCodec;

.field private h:Lcom/muvee/dsg/mmap/api/videorecord/a;

.field private i:Landroid/media/MediaMuxer;

.field private j:I

.field private k:I

.field private l:Lcom/muvee/dsg/mmap/api/videorecord/b;

.field private m:[I

.field private n:Landroid/graphics/SurfaceTexture;

.field private o:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderInitParam;

.field private p:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

.field private q:Landroid/view/Surface;

.field private r:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$SmartVideoRecorderCallBack;

.field private s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;

.field private t:F

.field private u:Landroid/media/MediaCodec;

.field private v:Z

.field private w:J

.field private x:J

.field private y:J

.field private z:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/os/Handler;

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->f:[Landroid/os/Handler;

    .line 120
    iput v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->j:I

    .line 121
    iput v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->k:I

    .line 129
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$1;)V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;

    .line 130
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->t:F

    .line 132
    iput-boolean v4, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->v:Z

    .line 134
    new-instance v0, Lcom/muvee/dsg/mmap/api/resampler/ReSampler;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/resampler/ReSampler;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->a:Lcom/muvee/dsg/mmap/api/resampler/ReSampler;

    .line 135
    new-instance v0, Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->b:Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;

    .line 136
    new-instance v0, Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->c:Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;

    .line 137
    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->d:J

    .line 138
    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->e:Ljava/nio/ByteBuffer;

    .line 261
    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->w:J

    .line 262
    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->x:J

    .line 263
    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->y:J

    .line 775
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->A:J

    .line 224
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;I)V

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;->start()V

    .line 226
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;I)V

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;->start()V

    .line 227
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;

    invoke-direct {v0, p0, v4}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;I)V

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;->start()V

    .line 229
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;I)V

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;->start()V

    .line 230
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;I)V

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;->start()V

    .line 231
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;I)V

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$b;->start()V

    .line 232
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 322
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->h:Lcom/muvee/dsg/mmap/api/videorecord/a;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->h:Lcom/muvee/dsg/mmap/api/videorecord/a;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->q:Landroid/view/Surface;

    invoke-virtual {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videorecord/a;->a(ILjava/lang/Object;)V

    .line 325
    :cond_0
    return-void
.end method

.method private a(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->i:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 556
    return-void
.end method

.method private a(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$a;)V
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/4 v2, 0x0

    .line 560
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$a;->b:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->u:Landroid/media/MediaCodec;

    invoke-virtual {v0, v8, v9}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 562
    if-ltz v1, :cond_1

    .line 564
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$a;->a:[B

    if-eqz v0, :cond_2

    .line 567
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->B:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 568
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->B:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v1

    iget-object v3, p1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$a;->a:[B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 569
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->u:Landroid/media/MediaCodec;

    iget-object v3, p1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$a;->a:[B

    array-length v3, v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 611
    :cond_1
    :goto_0
    return-void

    .line 571
    :cond_2
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->u:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    .line 575
    :cond_3
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->b:Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;->sampleRate:I

    int-to-float v0, v0

    iget v1, p1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$a;->b:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 576
    iget-wide v4, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->d:J

    int-to-long v6, v0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_4

    .line 577
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->a:Lcom/muvee/dsg/mmap/api/resampler/ReSampler;

    invoke-virtual {v1}, Lcom/muvee/dsg/mmap/api/resampler/ReSampler;->close()V

    .line 578
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->c:Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;

    iput v0, v1, Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;->sampleRate:I

    .line 579
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->a:Lcom/muvee/dsg/mmap/api/resampler/ReSampler;

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->b:Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;

    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->c:Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;

    invoke-virtual {v1, v3, v4}, Lcom/muvee/dsg/mmap/api/resampler/ReSampler;->init(Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;)V

    .line 580
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->d:J

    .line 584
    :cond_4
    new-instance v7, Lcom/muvee/dsg/mmap/api/resampler/ReSamplerFrameParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/resampler/ReSamplerFrameParam;-><init>()V

    .line 585
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 586
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->e:Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$a;->a:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 587
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->e:Ljava/nio/ByteBuffer;

    iput-object v0, v7, Lcom/muvee/dsg/mmap/api/resampler/ReSamplerFrameParam;->buffer:Ljava/nio/ByteBuffer;

    .line 588
    const/16 v0, 0x1000

    iput v0, v7, Lcom/muvee/dsg/mmap/api/resampler/ReSamplerFrameParam;->frameSize:I

    .line 589
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->a:Lcom/muvee/dsg/mmap/api/resampler/ReSampler;

    invoke-virtual {v0, v7}, Lcom/muvee/dsg/mmap/api/resampler/ReSampler;->attachFrame(Lcom/muvee/dsg/mmap/api/resampler/ReSamplerFrameParam;)V

    .line 592
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->a:Lcom/muvee/dsg/mmap/api/resampler/ReSampler;

    invoke-virtual {v0, v7}, Lcom/muvee/dsg/mmap/api/resampler/ReSampler;->getFrame(Lcom/muvee/dsg/mmap/api/resampler/ReSamplerFrameParam;)V

    .line 593
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 594
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->e:Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$a;->a:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 595
    iget v0, v7, Lcom/muvee/dsg/mmap/api/resampler/ReSamplerFrameParam;->frameSize:I

    if-lez v0, :cond_1

    .line 598
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->u:Landroid/media/MediaCodec;

    invoke-virtual {v0, v8, v9}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 599
    if-ltz v1, :cond_5

    .line 600
    iget-object v0, p1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$a;->a:[B

    if-eqz v0, :cond_5

    .line 603
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->B:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 604
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->B:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v1

    iget-object v3, p1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$a;->a:[B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 605
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->u:Landroid/media/MediaCodec;

    iget-object v3, p1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$a;->a:[B

    array-length v3, v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$a;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->a(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$a;)V

    return-void
.end method

.method private a(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderFrameParam;)V
    .locals 12

    .prologue
    .line 266
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 268
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->n:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 269
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->n:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v8

    .line 270
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->y:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 271
    iput-wide v8, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->y:J

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->h:Lcom/muvee/dsg/mmap/api/videorecord/a;

    if-eqz v0, :cond_2

    .line 275
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->o:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderInitParam;

    iget v2, v2, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderInitParam;->previewWidth:I

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->o:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderInitParam;

    iget v3, v3, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderInitParam;->previewHeight:I

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 278
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->h:Lcom/muvee/dsg/mmap/api/videorecord/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/a;->b(I)V

    .line 279
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->h:Lcom/muvee/dsg/mmap/api/videorecord/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v8, v9, v1}, Lcom/muvee/dsg/mmap/api/videorecord/a;->a(JI)V

    .line 280
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->l:Lcom/muvee/dsg/mmap/api/videorecord/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->m:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/muvee/dsg/mmap/api/videorecord/b;->a(Landroid/graphics/SurfaceTexture;ZIZLandroid/graphics/RectF;)V

    .line 281
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->h:Lcom/muvee/dsg/mmap/api/videorecord/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/a;->c(I)Z

    .line 285
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->p:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    if-eqz v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 291
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->w:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 292
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->w:J

    .line 293
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->x:J

    .line 304
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->p:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    iget v2, v2, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;->width:I

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->p:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    iget v3, v3, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;->height:I

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 305
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->h:Lcom/muvee/dsg/mmap/api/videorecord/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/a;->b(I)V

    .line 306
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->h:Lcom/muvee/dsg/mmap/api/videorecord/a;

    iget-wide v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->x:J

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/muvee/dsg/mmap/api/videorecord/a;->a(JI)V

    .line 307
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->l:Lcom/muvee/dsg/mmap/api/videorecord/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->m:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eqz p1, :cond_5

    iget-object v5, p1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderFrameParam;->cropRect:Landroid/graphics/RectF;

    :goto_1
    invoke-virtual/range {v0 .. v5}, Lcom/muvee/dsg/mmap/api/videorecord/b;->a(Landroid/graphics/SurfaceTexture;ZIZLandroid/graphics/RectF;)V

    .line 308
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->h:Lcom/muvee/dsg/mmap/api/videorecord/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/a;->c(I)Z

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->r:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$SmartVideoRecorderCallBack;

    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->r:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$SmartVideoRecorderCallBack;

    iget-wide v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->w:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-wide v4, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->x:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v4, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v4, v10

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$SmartVideoRecorderCallBack;->onProgressUpdate(JJ)V

    .line 317
    :cond_2
    iput-wide v8, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->y:J

    .line 318
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->A:J

    const-wide/16 v2, 0xa

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const-string v0, "com.example.realtimeslowmotexture.SmartVideoRecorder"

    const-string v1, "::swap: time=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_3
    return-void

    .line 296
    :cond_4
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->y:J

    sub-long v0, v8, v0

    .line 297
    iget-wide v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->w:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->w:J

    .line 298
    iget-wide v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->x:J

    long-to-float v2, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->t:F

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->x:J

    goto/16 :goto_0

    .line 307
    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;)[Landroid/os/Handler;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->f:[Landroid/os/Handler;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->h:Lcom/muvee/dsg/mmap/api/videorecord/a;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->h:Lcom/muvee/dsg/mmap/api/videorecord/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/a;->a(I)V

    .line 331
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->f()V

    return-void
.end method

.method private c()V
    .locals 11

    .prologue
    const-wide/16 v4, -0x1

    const/4 v10, 0x0

    .line 337
    .line 338
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->g:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    move-wide v2, v4

    .line 340
    :cond_0
    :goto_0
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 341
    iget-object v6, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->g:Landroid/media/MediaCodec;

    invoke-virtual {v6, v1, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v6

    .line 342
    if-lez v6, :cond_5

    .line 344
    iget v7, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v7, v7, 0x4

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    .line 380
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->f:[Landroid/os/Handler;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 381
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->g:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 382
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->g:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 384
    const/4 v0, -0x1

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->j:I

    .line 385
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->e()V

    .line 388
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->r:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$SmartVideoRecorderCallBack;

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->r:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$SmartVideoRecorderCallBack;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->p:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;->savePath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$SmartVideoRecorderCallBack;->onSaveCompleted(Ljava/lang/String;)V

    .line 392
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->p:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    .line 393
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;

    iput v10, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;->a:I

    .line 395
    return-void

    .line 348
    :cond_2
    iget v7, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->j:I

    if-gez v7, :cond_3

    .line 349
    iget-object v7, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->i:Landroid/media/MediaMuxer;

    iget-object v8, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->g:Landroid/media/MediaCodec;

    invoke-virtual {v8}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v7

    iput v7, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->j:I

    .line 350
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->d()V

    .line 357
    :cond_3
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-gez v7, :cond_4

    .line 358
    iget-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 361
    :cond_4
    new-instance v7, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v7}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 362
    iget v8, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput v8, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 363
    iget v8, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iput v8, v7, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 364
    iget-wide v8, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long/2addr v8, v2

    iput-wide v8, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 365
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput v1, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 370
    iget v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->j:I

    aget-object v8, v0, v6

    invoke-direct {p0, v1, v8, v7}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->a(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 372
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->g:Landroid/media/MediaCodec;

    invoke-virtual {v1, v6, v10}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_0

    .line 375
    :cond_5
    const/4 v1, -0x3

    if-ne v6, v1, :cond_0

    .line 376
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->g:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->c()V

    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->v:Z

    if-eqz v0, :cond_1

    .line 401
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->j:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->k:I

    if-ltz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->i:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 403
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->i:Landroid/media/MediaMuxer;

    monitor-enter v1

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->i:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 405
    monitor-exit v1

    .line 419
    :goto_0
    return-void

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 408
    :cond_0
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->i:Landroid/media/MediaMuxer;

    monitor-enter v1

    .line 410
    :try_start_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->i:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 414
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

    .line 411
    :catch_0
    move-exception v0

    .line 412
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->i:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->g()V

    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 423
    iget-boolean v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->v:Z

    if-eqz v0, :cond_2

    .line 424
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->k:I

    if-gez v0, :cond_1

    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->j:I

    if-gez v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->i:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 426
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->i:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 427
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->i:Landroid/media/MediaMuxer;

    monitor-enter v1

    .line 428
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->i:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 429
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    iput-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->i:Landroid/media/MediaMuxer;

    .line 431
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;

    iget-boolean v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;->b:Z

    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->release()V

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 429
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 435
    :cond_1
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->i:Landroid/media/MediaMuxer;

    monitor-enter v1

    .line 437
    :try_start_2
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->i:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 441
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

    .line 438
    :catch_0
    move-exception v0

    .line 439
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 444
    :cond_2
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->i:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 445
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->i:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 446
    iput-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->i:Landroid/media/MediaMuxer;

    .line 447
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;

    iget-boolean v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;->b:Z

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->release()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->a()V

    return-void
.end method

.method private f()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 461
    :try_start_0
    const-string/jumbo v0, "video/avc"

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->g:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    :goto_0
    const-string/jumbo v0, "video/avc"

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->p:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    iget v1, v1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;->width:I

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->p:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    iget v2, v2, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;->height:I

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 467
    const-string v1, "bitrate"

    const v2, 0x5b8d80

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 468
    const-string v1, "frame-rate"

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 469
    const-string v1, "color-format"

    const v2, 0x7f000789

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 470
    const-string v1, "i-frame-interval"

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 471
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->g:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v4, v4, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 473
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->g:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->q:Landroid/view/Surface;

    .line 474
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->g:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 476
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->f:[Landroid/os/Handler;

    aget-object v0, v0, v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 478
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->f:[Landroid/os/Handler;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 480
    return-void

    .line 462
    :catch_0
    move-exception v0

    .line 463
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic f(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->b()V

    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 486
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/a;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->o:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderInitParam;

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderInitParam;->previewSurface:Landroid/view/Surface;

    invoke-direct {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/a;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->h:Lcom/muvee/dsg/mmap/api/videorecord/a;

    .line 487
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->h:Lcom/muvee/dsg/mmap/api/videorecord/a;

    invoke-virtual {v0, v2}, Lcom/muvee/dsg/mmap/api/videorecord/a;->b(I)V

    .line 489
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/b;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/videorecord/b;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->l:Lcom/muvee/dsg/mmap/api/videorecord/b;

    .line 490
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->l:Lcom/muvee/dsg/mmap/api/videorecord/b;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videorecord/b;->a()V

    .line 492
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->m:[I

    .line 493
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->m:[I

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 495
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->m:[I

    aget v1, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->n:Landroid/graphics/SurfaceTexture;

    .line 496
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->n:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 498
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->r:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$SmartVideoRecorderCallBack;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->r:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$SmartVideoRecorderCallBack;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->n:Landroid/graphics/SurfaceTexture;

    invoke-interface {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$SmartVideoRecorderCallBack;->onSurfaceTextureInitilized(Landroid/graphics/SurfaceTexture;)V

    .line 501
    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->j()V

    return-void
.end method

.method private h()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 507
    const-wide/16 v2, 0x0

    .line 508
    const v1, 0x46b567e9

    .line 509
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->u:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 511
    :cond_0
    :goto_0
    new-instance v4, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v4}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 512
    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->u:Landroid/media/MediaCodec;

    const-wide/16 v6, -0x1

    invoke-virtual {v5, v4, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v5

    .line 513
    if-ltz v5, :cond_4

    .line 515
    iget v6, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->k:I

    if-gez v6, :cond_1

    .line 516
    iget-object v6, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->i:Landroid/media/MediaMuxer;

    iget-object v7, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->u:Landroid/media/MediaCodec;

    invoke-virtual {v7}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v6

    iput v6, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->k:I

    .line 517
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->d()V

    .line 521
    :cond_1
    iget v6, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x4

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    .line 547
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->u:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 548
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->u:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 550
    const/4 v0, -0x1

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->k:I

    .line 551
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->e()V

    .line 553
    return-void

    .line 525
    :cond_2
    iget v6, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    if-nez v6, :cond_3

    .line 527
    new-instance v6, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v6}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 528
    iput v8, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 529
    iput v8, v6, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 530
    iput-wide v2, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 531
    iget v7, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput v7, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 532
    aget-object v7, v0, v5

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 536
    iget v4, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->k:I

    aget-object v7, v0, v5

    invoke-direct {p0, v4, v7, v6}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->a(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 538
    long-to-float v2, v2

    add-float/2addr v2, v1

    float-to-long v2, v2

    .line 540
    :cond_3
    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->u:Landroid/media/MediaCodec;

    invoke-virtual {v4, v5, v8}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_0

    .line 541
    :cond_4
    const/4 v4, -0x3

    if-ne v5, v4, :cond_0

    .line 542
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->u:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic h(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->i()V

    return-void
.end method

.method private i()V
    .locals 5

    .prologue
    const/4 v3, 0x2

    .line 617
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 618
    const-string v1, "mime"

    const-string v2, "audio/mp4a-latm"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const-string v1, "aac-profile"

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 620
    const-string/jumbo v1, "sample-rate"

    const v2, 0xac44

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 621
    const-string v1, "channel-count"

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 622
    const-string v1, "bitrate"

    const v2, 0x1f400

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 623
    const-string v1, "max-input-size"

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 626
    :try_start_0
    const-string v1, "audio/mp4a-latm"

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->u:Landroid/media/MediaCodec;

    .line 627
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->u:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 628
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->u:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 629
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->u:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->B:[Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    :goto_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->f:[Landroid/os/Handler;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 636
    return-void

    .line 630
    :catch_0
    move-exception v0

    .line 631
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic i(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->h()V

    return-void
.end method

.method private j()V
    .locals 10

    .prologue
    const/16 v9, 0xa

    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x4

    const/4 v1, 0x0

    .line 640
    const-string v0, "com.example.realtimeslowmotexture.SmartVideoRecorder"

    const-string v2, "::startAudioRecorder: %s"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v5, v5, v6

    aput-object v5, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const v0, 0xac44

    const/16 v2, 0xc

    invoke-static {v0, v2, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    .line 644
    new-instance v0, Landroid/media/AudioRecord;

    const v2, 0xac44

    const/16 v3, 0xc

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 650
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 653
    :goto_0
    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 654
    const/16 v3, 0x1000

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/AudioRecord;->read([BII)I

    .line 657
    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;

    iget v3, v3, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;->a:I

    if-ne v3, v8, :cond_0

    .line 658
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 659
    iput v9, v3, Landroid/os/Message;->what:I

    .line 660
    new-instance v4, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$a;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$a;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$1;)V

    .line 661
    iput-object v2, v4, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$a;->a:[B

    .line 662
    iget v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->t:F

    iput v2, v4, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$a;->b:F

    .line 664
    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 666
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->f:[Landroid/os/Handler;

    aget-object v2, v2, v7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 671
    :cond_0
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;

    monitor-enter v2

    .line 672
    :try_start_0
    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;

    iget v3, v3, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;->a:I

    if-ne v3, v7, :cond_1

    .line 673
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->f:[Landroid/os/Handler;

    aget-object v1, v1, v7

    invoke-virtual {v1, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 682
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 683
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 687
    return-void

    .line 675
    :cond_1
    :try_start_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public enableAudio(Z)V
    .locals 0

    .prologue
    .line 851
    iput-boolean p1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->v:Z

    .line 852
    return-void
.end method

.method public getCurrentSpeed()F
    .locals 1

    .prologue
    .line 837
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->t:F

    return v0
.end method

.method public init(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderInitParam;)V
    .locals 3

    .prologue
    .line 240
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->o:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderInitParam;

    .line 241
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$1;

    invoke-direct {v0, p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$1;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;)V

    .line 257
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 259
    return-void
.end method

.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x3e8

    .line 782
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 783
    iget-wide v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->z:J

    sub-long v2, v0, v2

    div-long/2addr v2, v4

    div-long/2addr v2, v4

    .line 784
    iput-wide v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->z:J

    .line 785
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->A:J

    const-wide/16 v4, 0xa

    rem-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    const-string v0, "com.example.realtimeslowmotexture.SmartVideoRecorder"

    const-string v1, "::onFrameAvailable: %d,%f"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/high16 v6, 0x447a0000    # 1000.0f

    long-to-float v2, v2

    div-float v2, v6, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->r:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$SmartVideoRecorderCallBack;

    if-eqz v0, :cond_1

    .line 788
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->r:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$SmartVideoRecorderCallBack;

    invoke-interface {v0, p1}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$SmartVideoRecorderCallBack;->onFrameAvailable(Landroid/graphics/SurfaceTexture;)Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderFrameParam;

    move-result-object v0

    .line 789
    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->a(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderFrameParam;)V

    .line 794
    :goto_0
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->A:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->A:J

    .line 795
    return-void

    .line 791
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->a(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderFrameParam;)V

    goto :goto_0
.end method

.method public pauseRecording()V
    .locals 3

    .prologue
    .line 731
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;

    monitor-enter v1

    .line 732
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;

    iget-boolean v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;->b:Z

    if-eqz v0, :cond_0

    .line 733
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Released"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;->a:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 736
    monitor-exit v1

    .line 740
    :goto_0
    return-void

    .line 738
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;

    const/4 v2, 0x2

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;->a:I

    .line 739
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 809
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;

    monitor-enter v1

    .line 811
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;->a:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;->a:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 812
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;

    const/4 v2, 0x4

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;->a:I

    .line 813
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->g:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 814
    monitor-exit v1

    .line 830
    :goto_0
    return-void

    .line 817
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;->b:Z

    .line 819
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->n:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 821
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->h:Lcom/muvee/dsg/mmap/api/videorecord/a;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videorecord/a;->a()V

    .line 822
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->h:Lcom/muvee/dsg/mmap/api/videorecord/a;

    .line 824
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->f:[Landroid/os/Handler;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    .line 825
    if-eqz v4, :cond_2

    .line 826
    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 824
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 829
    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resumeRecording()V
    .locals 3

    .prologue
    .line 746
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;

    monitor-enter v1

    .line 747
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;

    iget-boolean v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;->b:Z

    if-eqz v0, :cond_0

    .line 748
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Released"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;->a:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 751
    monitor-exit v1

    .line 755
    :goto_0
    return-void

    .line 753
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;

    const/4 v2, 0x1

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;->a:I

    .line 754
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCallBack(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$SmartVideoRecorderCallBack;)V
    .locals 0

    .prologue
    .line 802
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->r:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$SmartVideoRecorderCallBack;

    .line 803
    return-void
.end method

.method public setCurrentSpeed(F)V
    .locals 0

    .prologue
    .line 846
    iput p1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->t:F

    .line 847
    return-void
.end method

.method public startRecording(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 698
    const-string v0, "com.example.realtimeslowmotexture.SmartVideoRecorder"

    const-string v1, "::startRecording: "

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v3, v3, v5

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;

    monitor-enter v1

    .line 701
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;

    iget-boolean v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;->b:Z

    if-eqz v0, :cond_0

    .line 702
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Released"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;->a:I

    if-eqz v0, :cond_1

    .line 705
    monitor-exit v1

    .line 725
    :goto_0
    return-void

    .line 707
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;

    const/4 v2, 0x1

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;->a:I

    .line 708
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->p:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    .line 710
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->w:J

    .line 711
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->x:J

    .line 713
    const/4 v0, -0x1

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->j:I

    .line 714
    const/4 v0, -0x1

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->k:I

    .line 716
    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v2, p1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;->savePath:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->i:Landroid/media/MediaMuxer;

    .line 718
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->f:[Landroid/os/Handler;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 720
    iget-boolean v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->v:Z

    if-eqz v0, :cond_2

    .line 721
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->f:[Landroid/os/Handler;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 722
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->f:[Landroid/os/Handler;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 724
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopRecording()V
    .locals 3

    .prologue
    .line 761
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;

    monitor-enter v1

    .line 762
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;

    iget-boolean v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;->b:Z

    if-eqz v0, :cond_0

    .line 763
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Released"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;->a:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;->a:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 766
    monitor-exit v1

    .line 771
    :goto_0
    return-void

    .line 768
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;

    const/4 v2, 0x4

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder$c;->a:I

    .line 769
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorder;->g:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 770
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
