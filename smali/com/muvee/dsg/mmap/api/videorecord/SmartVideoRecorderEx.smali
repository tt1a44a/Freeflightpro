.class public Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;
.super Ljava/lang/Object;
.source "SmartVideoRecorderEx.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$a;,
        Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;,
        Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;,
        Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;,
        Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$SmartVideoRecorderCallBack;
    }
.end annotation


# static fields
.field private static final f:[Ljava/lang/String;


# instance fields
.field private A:Landroid/graphics/Bitmap;

.field private B:Landroid/graphics/Canvas;

.field private C:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;

.field private D:Lcom/muvee/dsg/text/TextRenderHelper;

.field private E:J

.field private F:J

.field private G:[Ljava/nio/ByteBuffer;

.field private H:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;

.field private I:Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;

.field private J:Lcom/muvee/dsg/mmap/api/videorecord/e;

.field a:Lcom/muvee/dsg/mmap/api/resampler/ReSampler;

.field b:Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;

.field public blockingDeque:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque",
            "<",
            "Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;

.field d:J

.field e:Ljava/nio/ByteBuffer;

.field private g:Landroid/media/MediaCodec;

.field private h:Lcom/muvee/dsg/mmap/api/videorecord/a;

.field private i:Landroid/media/MediaMuxer;

.field private j:I

.field private k:I

.field private l:Lcom/muvee/dsg/mmap/api/videorecord/b;

.field private m:Lcom/muvee/dsg/mmap/api/videorecord/d;

.field private n:[I

.field private o:Landroid/graphics/SurfaceTexture;

.field private p:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderInitParam;

.field private q:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

.field private r:Landroid/view/Surface;

.field private s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$SmartVideoRecorderCallBack;

.field private t:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;

.field private u:F

.field private v:Landroid/media/MediaCodec;

.field private w:Z

.field private x:J

.field private y:J

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 137
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "thread.name.gl"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "thread.name.video.encoder"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "thread.name.video.encoder.output"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "thread.name.audio.encoder"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "thread.name.audio.encoder.output"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "thread.name.audio.recorder"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "thread.name.saving"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "thread.name.camera"

    aput-object v2, v0, v1

    sput-object v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->blockingDeque:Ljava/util/concurrent/BlockingDeque;

    .line 178
    iput v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->j:I

    .line 179
    iput v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->k:I

    .line 190
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$1;)V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->t:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;

    .line 191
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->u:F

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->w:Z

    .line 195
    new-instance v0, Lcom/muvee/dsg/mmap/api/resampler/ReSampler;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/resampler/ReSampler;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->a:Lcom/muvee/dsg/mmap/api/resampler/ReSampler;

    .line 196
    new-instance v0, Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->b:Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;

    .line 197
    new-instance v0, Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->c:Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;

    .line 198
    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->d:J

    .line 199
    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->e:Ljava/nio/ByteBuffer;

    .line 335
    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->x:J

    .line 336
    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->y:J

    .line 337
    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->z:J

    .line 1191
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->F:J

    .line 293
    return-void
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->o:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;)Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->C:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;

    return-object p1
.end method

.method private a()Lcom/muvee/dsg/text/TextRenderHelper;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->D:Lcom/muvee/dsg/text/TextRenderHelper;

    if-nez v0, :cond_0

    .line 363
    new-instance v0, Lcom/muvee/dsg/text/TextRenderHelper;

    invoke-direct {v0}, Lcom/muvee/dsg/text/TextRenderHelper;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->D:Lcom/muvee/dsg/text/TextRenderHelper;

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->D:Lcom/muvee/dsg/text/TextRenderHelper;

    return-object v0
.end method

.method private a(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->i:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 904
    return-void
.end method

.method private a(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$a;)V
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/4 v2, 0x0

    .line 908
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$a;->b:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    .line 909
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->v:Landroid/media/MediaCodec;

    invoke-virtual {v0, v8, v9}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 910
    if-ltz v1, :cond_1

    .line 912
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$a;->a:[B

    if-eqz v0, :cond_2

    .line 915
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->G:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 916
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->G:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v1

    iget-object v3, p1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$a;->a:[B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 917
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->v:Landroid/media/MediaCodec;

    iget-object v3, p1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$a;->a:[B

    array-length v3, v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 959
    :cond_1
    :goto_0
    return-void

    .line 919
    :cond_2
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->v:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    .line 923
    :cond_3
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->b:Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;->sampleRate:I

    int-to-float v0, v0

    iget v1, p1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$a;->b:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 924
    iget-wide v4, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->d:J

    int-to-long v6, v0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_4

    .line 925
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->a:Lcom/muvee/dsg/mmap/api/resampler/ReSampler;

    invoke-virtual {v1}, Lcom/muvee/dsg/mmap/api/resampler/ReSampler;->close()V

    .line 926
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->c:Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;

    iput v0, v1, Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;->sampleRate:I

    .line 927
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->a:Lcom/muvee/dsg/mmap/api/resampler/ReSampler;

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->b:Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;

    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->c:Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;

    invoke-virtual {v1, v3, v4}, Lcom/muvee/dsg/mmap/api/resampler/ReSampler;->init(Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;)V

    .line 928
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->d:J

    .line 932
    :cond_4
    new-instance v7, Lcom/muvee/dsg/mmap/api/resampler/ReSamplerFrameParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/resampler/ReSamplerFrameParam;-><init>()V

    .line 933
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 934
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->e:Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$a;->a:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 935
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->e:Ljava/nio/ByteBuffer;

    iput-object v0, v7, Lcom/muvee/dsg/mmap/api/resampler/ReSamplerFrameParam;->buffer:Ljava/nio/ByteBuffer;

    .line 936
    const/16 v0, 0x1000

    iput v0, v7, Lcom/muvee/dsg/mmap/api/resampler/ReSamplerFrameParam;->frameSize:I

    .line 937
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->a:Lcom/muvee/dsg/mmap/api/resampler/ReSampler;

    invoke-virtual {v0, v7}, Lcom/muvee/dsg/mmap/api/resampler/ReSampler;->attachFrame(Lcom/muvee/dsg/mmap/api/resampler/ReSamplerFrameParam;)V

    .line 940
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->a:Lcom/muvee/dsg/mmap/api/resampler/ReSampler;

    invoke-virtual {v0, v7}, Lcom/muvee/dsg/mmap/api/resampler/ReSampler;->getFrame(Lcom/muvee/dsg/mmap/api/resampler/ReSamplerFrameParam;)V

    .line 941
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 942
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->e:Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$a;->a:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 943
    iget v0, v7, Lcom/muvee/dsg/mmap/api/resampler/ReSamplerFrameParam;->frameSize:I

    if-lez v0, :cond_1

    .line 946
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->v:Landroid/media/MediaCodec;

    invoke-virtual {v0, v8, v9}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 947
    if-ltz v1, :cond_5

    .line 948
    iget-object v0, p1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$a;->a:[B

    if-eqz v0, :cond_5

    .line 951
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->G:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 952
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->G:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v1

    iget-object v3, p1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$a;->a:[B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 953
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->v:Landroid/media/MediaCodec;

    iget-object v3, p1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$a;->a:[B

    array-length v3, v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->i()V

    return-void
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$a;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->a(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$a;)V

    return-void
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderFrameParam;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->a(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderFrameParam;)V

    return-void
.end method

.method private a(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderFrameParam;)V
    .locals 12

    .prologue
    .line 513
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 515
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->o:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 516
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->o:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v10

    .line 517
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->z:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 518
    iput-wide v10, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->z:J

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->h:Lcom/muvee/dsg/mmap/api/videorecord/a;

    if-eqz v0, :cond_3

    .line 531
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->p:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderInitParam;

    iget v2, v2, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderInitParam;->previewWidth:I

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->p:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderInitParam;

    iget v3, v3, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderInitParam;->previewHeight:I

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 532
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->h:Lcom/muvee/dsg/mmap/api/videorecord/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/a;->b(I)V

    .line 533
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->h:Lcom/muvee/dsg/mmap/api/videorecord/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v10, v11, v1}, Lcom/muvee/dsg/mmap/api/videorecord/a;->a(JI)V

    .line 534
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->l:Lcom/muvee/dsg/mmap/api/videorecord/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->n:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/muvee/dsg/mmap/api/videorecord/b;->a(Landroid/graphics/SurfaceTexture;ZIZLandroid/graphics/RectF;)V

    .line 535
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->h:Lcom/muvee/dsg/mmap/api/videorecord/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/a;->c(I)Z

    .line 539
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->q:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    if-eqz v0, :cond_3

    .line 543
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->t:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 546
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->I:Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->q:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    iget v1, v1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;->width:I

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->q:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    iget v2, v2, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;->height:I

    invoke-virtual {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->getOffset(II)I

    move-result v0

    .line 548
    if-gez v0, :cond_6

    .line 549
    mul-int/lit8 v0, v0, -0x1

    .line 550
    const-string v1, "com.muvee.dsg.mmap.api.videorecord.SmartVideoRecorderEx"

    const-string v2, "::swap: testingIssue %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 551
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 550
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->H:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;->c:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;

    if-eqz v1, :cond_6

    .line 554
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->H:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;->c:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    :try_start_1
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->H:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;->c:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 556
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v6, v0

    .line 561
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->I:Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->q:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    iget v1, v1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;->width:I

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->q:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    iget v2, v2, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;->height:I

    invoke-virtual {v0, v6, v1, v2}, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->beforeRender(III)V

    .line 562
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->l:Lcom/muvee/dsg/mmap/api/videorecord/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->n:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/muvee/dsg/mmap/api/videorecord/b;->a(Landroid/graphics/SurfaceTexture;ZIZLandroid/graphics/RectF;)V

    .line 563
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->I:Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->unBind()V

    .line 565
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->x:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 566
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->x:J

    .line 567
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->y:J

    .line 578
    :goto_1
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$1;)V

    .line 579
    iget-wide v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->y:J

    iput-wide v2, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;->a:J

    .line 580
    iput v6, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;->b:I

    .line 581
    iget-object v1, p1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderFrameParam;->textParam:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;

    iput-object v1, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;->c:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;

    .line 583
    iget-object v1, p1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderFrameParam;->cropRect:Landroid/graphics/RectF;

    if-eqz v1, :cond_1

    .line 584
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderFrameParam;->cropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderFrameParam;->cropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderFrameParam;->cropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, p1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderFrameParam;->cropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;->e:Landroid/graphics/RectF;

    .line 587
    :cond_1
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->blockingDeque:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingDeque;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 610
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$SmartVideoRecorderCallBack;

    if-eqz v0, :cond_3

    .line 611
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$SmartVideoRecorderCallBack;

    iget-wide v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->x:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-wide v4, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->y:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$SmartVideoRecorderCallBack;->onProgressUpdate(JJ)V

    .line 616
    :cond_3
    iput-wide v10, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->z:J

    .line 617
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->F:J

    const-wide/16 v2, 0xa

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const-string v0, "com.muvee.dsg.mmap.api.videorecord.SmartVideoRecorderEx"

    const-string v1, "::swap: time=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v8

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

    .line 618
    :cond_4
    return-void

    .line 556
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 603
    :catch_0
    move-exception v0

    .line 604
    const-string v1, "com.muvee.dsg.mmap.api.videorecord.SmartVideoRecorderEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::swap:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 570
    :cond_5
    :try_start_5
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->z:J

    sub-long v0, v10, v0

    .line 571
    iget-wide v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->x:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->x:J

    .line 572
    iget-wide v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->y:J

    long-to-float v2, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->u:F

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->y:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    :cond_6
    move v6, v0

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->I:Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 392
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->C:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;

    .line 397
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->blockingDeque:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->H:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;

    .line 399
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->H:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;

    iget-boolean v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;->d:Z

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->g:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 401
    const-string/jumbo v0, "thread.name.gl"

    new-instance v1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$8;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$8;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 510
    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->H:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;->c:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->H:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;->c:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;->a(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->H:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;

    iget-object v1, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;->c:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :try_start_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->H:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;->c:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 422
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->H:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;->c:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;->a(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;Z)Z

    .line 423
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 426
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->A:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 427
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->q:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;->width:I

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->q:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    iget v1, v1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->A:Landroid/graphics/Bitmap;

    .line 428
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->A:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->B:Landroid/graphics/Canvas;

    .line 437
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 439
    const-string/jumbo v0, "thread.name.gl"

    new-instance v2, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$9;

    invoke-direct {v2, p0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$9;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 499
    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 500
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 501
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 503
    :catch_0
    move-exception v0

    .line 505
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 423
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    .line 431
    :cond_3
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->q:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;->width:I

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->A:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->q:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;->height:I

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->A:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 432
    :cond_4
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->q:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;->width:I

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->q:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    iget v1, v1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->A:Landroid/graphics/Bitmap;

    .line 433
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->B:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->A:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1
.end method

.method static synthetic c(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->q:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 631
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->h:Lcom/muvee/dsg/mmap/api/videorecord/a;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->h:Lcom/muvee/dsg/mmap/api/videorecord/a;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->r:Landroid/view/Surface;

    invoke-virtual {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videorecord/a;->a(ILjava/lang/Object;)V

    .line 634
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Lcom/muvee/dsg/mmap/api/videorecord/a;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->h:Lcom/muvee/dsg/mmap/api/videorecord/a;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 637
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->h:Lcom/muvee/dsg/mmap/api/videorecord/a;

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->h:Lcom/muvee/dsg/mmap/api/videorecord/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/a;->a(I)V

    .line 640
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->H:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;

    return-object v0
.end method

.method private e()V
    .locals 11

    .prologue
    const-wide/16 v4, -0x1

    const/4 v10, 0x0

    .line 646
    .line 647
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->g:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    move-wide v2, v4

    .line 649
    :cond_0
    :goto_0
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 650
    iget-object v6, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->g:Landroid/media/MediaCodec;

    invoke-virtual {v6, v1, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v6

    .line 651
    if-lez v6, :cond_5

    .line 653
    iget v7, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v7, v7, 0x4

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    .line 691
    const-string/jumbo v0, "thread.name.gl"

    new-instance v1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$10;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$10;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 697
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->g:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 698
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->g:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 700
    const/4 v0, -0x1

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->j:I

    .line 701
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->g()V

    .line 704
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$SmartVideoRecorderCallBack;

    if-eqz v0, :cond_1

    .line 705
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$SmartVideoRecorderCallBack;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->q:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;->savePath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$SmartVideoRecorderCallBack;->onSaveCompleted(Ljava/lang/String;)V

    .line 708
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->q:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    .line 709
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->t:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;

    iput v10, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;->a:I

    .line 711
    return-void

    .line 657
    :cond_2
    iget v7, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->j:I

    if-gez v7, :cond_3

    .line 658
    iget-object v7, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->i:Landroid/media/MediaMuxer;

    iget-object v8, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->g:Landroid/media/MediaCodec;

    invoke-virtual {v8}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v7

    iput v7, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->j:I

    .line 659
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->f()V

    .line 666
    :cond_3
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-gez v7, :cond_4

    .line 667
    iget-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 670
    :cond_4
    new-instance v7, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v7}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 671
    iget v8, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput v8, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 672
    iget v8, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iput v8, v7, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 673
    iget-wide v8, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long/2addr v8, v2

    iput-wide v8, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 674
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput v1, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 679
    iget v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->j:I

    aget-object v8, v0, v6

    invoke-direct {p0, v1, v8, v7}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->a(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 681
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->g:Landroid/media/MediaCodec;

    invoke-virtual {v1, v6, v10}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_0

    .line 684
    :cond_5
    const/4 v1, -0x3

    if-ne v6, v1, :cond_0

    .line 685
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->g:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto/16 :goto_0
.end method

.method static synthetic f(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Lcom/muvee/dsg/mmap/api/videorecord/e;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->J:Lcom/muvee/dsg/mmap/api/videorecord/e;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 716
    iget-boolean v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->w:Z

    if-eqz v0, :cond_1

    .line 717
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->j:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->k:I

    if-ltz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->i:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 719
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->i:Landroid/media/MediaMuxer;

    monitor-enter v1

    .line 720
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->i:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 721
    monitor-exit v1

    .line 735
    :goto_0
    return-void

    .line 721
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 724
    :cond_0
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->i:Landroid/media/MediaMuxer;

    monitor-enter v1

    .line 726
    :try_start_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->i:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 730
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

    .line 727
    :catch_0
    move-exception v0

    .line 728
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 733
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->i:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    goto :goto_0
.end method

.method static synthetic g(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->C:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$TextParam;

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 739
    iget-boolean v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->w:Z

    if-eqz v0, :cond_2

    .line 740
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->k:I

    if-gez v0, :cond_1

    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->j:I

    if-gez v0, :cond_1

    .line 741
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->i:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 742
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->i:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 743
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->i:Landroid/media/MediaMuxer;

    monitor-enter v1

    .line 744
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->i:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 745
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    iput-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->i:Landroid/media/MediaMuxer;

    .line 747
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->t:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;

    iget-boolean v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;->b:Z

    if-eqz v0, :cond_0

    .line 748
    invoke-virtual {p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->release()V

    .line 770
    :cond_0
    :goto_0
    return-void

    .line 745
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 751
    :cond_1
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->i:Landroid/media/MediaMuxer;

    monitor-enter v1

    .line 753
    :try_start_2
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->i:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 757
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

    .line 754
    :catch_0
    move-exception v0

    .line 755
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 760
    :cond_2
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->i:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 761
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->i:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 762
    iput-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->i:Landroid/media/MediaMuxer;

    .line 763
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->t:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;

    iget-boolean v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;->b:Z

    if-eqz v0, :cond_0

    .line 764
    invoke-virtual {p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->release()V

    goto :goto_0
.end method

.method static synthetic h(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->A:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private h()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 777
    :try_start_0
    const-string/jumbo v0, "video/avc"

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->g:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    :goto_0
    const-string/jumbo v0, "video/avc"

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->q:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    iget v1, v1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;->width:I

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->q:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    iget v2, v2, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;->height:I

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 783
    const-string v1, "bitrate"

    const v2, 0x5b8d80

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 784
    const-string v1, "frame-rate"

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 785
    const-string v1, "color-format"

    const v2, 0x7f000789

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 786
    const-string v1, "i-frame-interval"

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 787
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->g:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v4, v4, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 789
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->g:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->r:Landroid/view/Surface;

    .line 790
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->g:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 794
    const-string/jumbo v0, "thread.name.video.encoder.output"

    new-instance v1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$11;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$11;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 802
    const-string/jumbo v0, "thread.name.gl"

    new-instance v1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$12;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$12;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 810
    return-void

    .line 778
    :catch_0
    move-exception v0

    .line 779
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic i(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Lcom/muvee/dsg/text/TextRenderHelper;
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->a()Lcom/muvee/dsg/text/TextRenderHelper;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 816
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/a;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->p:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderInitParam;

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderInitParam;->previewSurface:Landroid/view/Surface;

    invoke-direct {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/a;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->h:Lcom/muvee/dsg/mmap/api/videorecord/a;

    .line 817
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->h:Lcom/muvee/dsg/mmap/api/videorecord/a;

    invoke-virtual {v0, v2}, Lcom/muvee/dsg/mmap/api/videorecord/a;->b(I)V

    .line 819
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->I:Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;

    .line 825
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/b;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/videorecord/b;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->l:Lcom/muvee/dsg/mmap/api/videorecord/b;

    .line 826
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->l:Lcom/muvee/dsg/mmap/api/videorecord/b;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videorecord/b;->a()V

    .line 828
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/d;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/videorecord/d;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->m:Lcom/muvee/dsg/mmap/api/videorecord/d;

    .line 829
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->m:Lcom/muvee/dsg/mmap/api/videorecord/d;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videorecord/d;->a()V

    .line 831
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/e;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/videorecord/e;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->J:Lcom/muvee/dsg/mmap/api/videorecord/e;

    .line 832
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->J:Lcom/muvee/dsg/mmap/api/videorecord/e;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videorecord/e;->a()V

    .line 834
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->n:[I

    .line 835
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->n:[I

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 837
    const-string/jumbo v0, "thread.name.camera"

    new-instance v1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$13;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$13;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 849
    return-void
.end method

.method static synthetic j(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Landroid/graphics/Canvas;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->B:Landroid/graphics/Canvas;

    return-object v0
.end method

.method private j()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 855
    const-wide/16 v2, 0x0

    .line 856
    const v1, 0x46b567e9

    .line 857
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->v:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 859
    :cond_0
    :goto_0
    new-instance v4, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v4}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 860
    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->v:Landroid/media/MediaCodec;

    const-wide/16 v6, -0x1

    invoke-virtual {v5, v4, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v5

    .line 861
    if-ltz v5, :cond_4

    .line 863
    iget v6, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->k:I

    if-gez v6, :cond_1

    .line 864
    iget-object v6, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->i:Landroid/media/MediaMuxer;

    iget-object v7, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->v:Landroid/media/MediaCodec;

    invoke-virtual {v7}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v6

    iput v6, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->k:I

    .line 865
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->f()V

    .line 869
    :cond_1
    iget v6, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x4

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    .line 895
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->v:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 896
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->v:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 898
    const/4 v0, -0x1

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->k:I

    .line 899
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->g()V

    .line 901
    return-void

    .line 873
    :cond_2
    iget v6, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    if-nez v6, :cond_3

    .line 875
    new-instance v6, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v6}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 876
    iput v8, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 877
    iput v8, v6, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 878
    iput-wide v2, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 879
    iget v7, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput v7, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 880
    aget-object v7, v0, v5

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 884
    iget v4, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->k:I

    aget-object v7, v0, v5

    invoke-direct {p0, v4, v7, v6}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->a(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 886
    long-to-float v2, v2

    add-float/2addr v2, v1

    float-to-long v2, v2

    .line 888
    :cond_3
    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->v:Landroid/media/MediaCodec;

    invoke-virtual {v4, v5, v8}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_0

    .line 889
    :cond_4
    const/4 v4, -0x3

    if-ne v5, v4, :cond_0

    .line 890
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->v:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic k(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Lcom/muvee/dsg/mmap/api/videorecord/d;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->m:Lcom/muvee/dsg/mmap/api/videorecord/d;

    return-object v0
.end method

.method private k()V
    .locals 5

    .prologue
    const/4 v3, 0x2

    .line 965
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 966
    const-string v1, "mime"

    const-string v2, "audio/mp4a-latm"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    const-string v1, "aac-profile"

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 968
    const-string/jumbo v1, "sample-rate"

    const v2, 0xac44

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 969
    const-string v1, "channel-count"

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 970
    const-string v1, "bitrate"

    const v2, 0x1f400

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 971
    const-string v1, "max-input-size"

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 974
    :try_start_0
    const-string v1, "audio/mp4a-latm"

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->v:Landroid/media/MediaCodec;

    .line 975
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->v:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 976
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->v:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 977
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->v:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->G:[Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 984
    :goto_0
    const-string/jumbo v0, "thread.name.audio.encoder.output"

    new-instance v1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$14;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$14;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 990
    return-void

    .line 978
    :catch_0
    move-exception v0

    .line 979
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private l()V
    .locals 10

    .prologue
    const/16 v9, 0x1000

    const/16 v3, 0xc

    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 994
    const-string v0, "com.muvee.dsg.mmap.api.videorecord.SmartVideoRecorderEx"

    const-string v2, "::startAudioRecorder: %s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    const/4 v7, 0x3

    aget-object v6, v6, v7

    aput-object v6, v5, v1

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const v0, 0xac44

    invoke-static {v0, v3, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    .line 998
    new-instance v0, Landroid/media/AudioRecord;

    const v2, 0xac44

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 1004
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 1007
    :goto_0
    new-array v2, v9, [B

    .line 1008
    invoke-virtual {v0, v2, v1, v9}, Landroid/media/AudioRecord;->read([BII)I

    .line 1011
    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->t:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;

    iget v3, v3, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;->a:I

    if-ne v3, v8, :cond_0

    .line 1014
    new-instance v3, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$a;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$1;)V

    .line 1015
    iput-object v2, v3, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$a;->a:[B

    .line 1016
    iget v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->u:F

    iput v2, v3, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$a;->b:F

    .line 1022
    const-string/jumbo v2, "thread.name.audio.encoder"

    new-instance v4, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$15;

    invoke-direct {v4, p0, v3}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$15;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$a;)V

    invoke-static {v2, v4}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1031
    :cond_0
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->t:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;

    monitor-enter v2

    .line 1032
    :try_start_0
    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->t:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;

    iget v3, v3, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;->a:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 1033
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1041
    const-string/jumbo v1, "thread.name.audio.encoder"

    new-instance v2, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$2;

    invoke-direct {v2, p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$2;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)V

    invoke-static {v1, v2}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1048
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 1049
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 1053
    return-void

    .line 1035
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

.method static synthetic l(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->d()V

    return-void
.end method

.method static synthetic m(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->e()V

    return-void
.end method

.method static synthetic n(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->c()V

    return-void
.end method

.method static synthetic o(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)[I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->n:[I

    return-object v0
.end method

.method static synthetic p(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->o:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic q(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$SmartVideoRecorderCallBack;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$SmartVideoRecorderCallBack;

    return-object v0
.end method

.method static synthetic r(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->j()V

    return-void
.end method

.method static synthetic s(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->b()V

    return-void
.end method

.method static synthetic t(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->h()V

    return-void
.end method

.method static synthetic u(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->k()V

    return-void
.end method

.method static synthetic v(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->l()V

    return-void
.end method


# virtual methods
.method public enableAudio(Z)V
    .locals 0

    .prologue
    .line 1298
    iput-boolean p1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->w:Z

    .line 1299
    return-void
.end method

.method public getCurrentSpeed()F
    .locals 1

    .prologue
    .line 1284
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->u:F

    return v0
.end method

.method public final handleOnFrameAvailable(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderFrameParam;)V
    .locals 2

    .prologue
    .line 1225
    const-string/jumbo v0, "thread.name.gl"

    new-instance v1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$7;

    invoke-direct {v1, p0, p1}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$7;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderFrameParam;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->postAtFrontOfQueue(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1230
    return-void
.end method

.method public init(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderInitParam;)V
    .locals 3

    .prologue
    .line 301
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->p:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderInitParam;

    .line 302
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$1;

    invoke-direct {v0, p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$1;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)V

    .line 331
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 333
    return-void
.end method

.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x3e8

    .line 1206
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1207
    iget-wide v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->E:J

    sub-long v2, v0, v2

    div-long/2addr v2, v4

    div-long/2addr v2, v4

    .line 1208
    iput-wide v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->E:J

    .line 1209
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->F:J

    const-wide/16 v4, 0xa

    rem-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    const-string v0, "com.muvee.dsg.mmap.api.videorecord.SmartVideoRecorderEx"

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

    .line 1211
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$SmartVideoRecorderCallBack;

    if-eqz v0, :cond_1

    .line 1212
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$SmartVideoRecorderCallBack;

    invoke-interface {v0, p1}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$SmartVideoRecorderCallBack;->onFrameAvailable(Landroid/graphics/SurfaceTexture;)Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderFrameParam;

    move-result-object v0

    .line 1214
    invoke-virtual {p0, v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->handleOnFrameAvailable(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderFrameParam;)V

    .line 1220
    :goto_0
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->F:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->F:J

    .line 1221
    return-void

    .line 1217
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->handleOnFrameAvailable(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderFrameParam;)V

    goto :goto_0
.end method

.method public pauseRecording()V
    .locals 3

    .prologue
    .line 1143
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->t:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;

    monitor-enter v1

    .line 1144
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->t:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;

    iget-boolean v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;->b:Z

    if-eqz v0, :cond_0

    .line 1145
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Released"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1147
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->t:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;->a:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 1148
    monitor-exit v1

    .line 1152
    :goto_0
    return-void

    .line 1150
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->t:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;

    const/4 v2, 0x2

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;->a:I

    .line 1151
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

    .line 1244
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->t:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;

    monitor-enter v1

    .line 1246
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->t:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;->a:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->t:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;->a:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1247
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->t:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;

    const/4 v2, 0x4

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;->a:I

    .line 1250
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$1;)V

    .line 1251
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;->d:Z

    .line 1252
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->blockingDeque:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingDeque;->add(Ljava/lang/Object;)Z

    .line 1254
    monitor-exit v1

    .line 1277
    :goto_0
    return-void

    .line 1257
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->t:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;->b:Z

    .line 1259
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->o:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 1261
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->h:Lcom/muvee/dsg/mmap/api/videorecord/a;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videorecord/a;->a()V

    .line 1262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->h:Lcom/muvee/dsg/mmap/api/videorecord/a;

    .line 1271
    sget-object v2, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->f:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 1272
    invoke-static {v4}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->getHandler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1271
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1276
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

.method public resumeRecording()V
    .locals 3

    .prologue
    .line 1158
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->t:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;

    monitor-enter v1

    .line 1159
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->t:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;

    iget-boolean v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;->b:Z

    if-eqz v0, :cond_0

    .line 1160
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Released"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1162
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->t:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;->a:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 1163
    monitor-exit v1

    .line 1167
    :goto_0
    return-void

    .line 1165
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->t:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;

    const/4 v2, 0x1

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;->a:I

    .line 1166
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCallBack(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$SmartVideoRecorderCallBack;)V
    .locals 0

    .prologue
    .line 1237
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$SmartVideoRecorderCallBack;

    .line 1238
    return-void
.end method

.method public setCurrentSpeed(F)V
    .locals 0

    .prologue
    .line 1293
    iput p1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->u:F

    .line 1294
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
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 1064
    const-string v0, "com.muvee.dsg.mmap.api.videorecord.SmartVideoRecorderEx"

    const-string v1, "::startRecording: "

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v3, v3, v4

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->t:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;

    monitor-enter v1

    .line 1067
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->t:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;

    iget-boolean v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;->b:Z

    if-eqz v0, :cond_0

    .line 1068
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Released"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1070
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->t:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;->a:I

    if-eqz v0, :cond_1

    .line 1071
    monitor-exit v1

    .line 1137
    :goto_0
    return-void

    .line 1073
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->t:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;

    const/4 v2, 0x1

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;->a:I

    .line 1074
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->q:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    .line 1076
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->x:J

    .line 1077
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->y:J

    .line 1079
    const/4 v0, -0x1

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->j:I

    .line 1080
    const/4 v0, -0x1

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->k:I

    .line 1082
    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v2, p1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;->savePath:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->i:Landroid/media/MediaMuxer;

    .line 1084
    const-string/jumbo v0, "thread.name.saving"

    new-instance v2, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$3;

    invoke-direct {v2, p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$3;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)V

    invoke-static {v0, v2}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1110
    const-string/jumbo v0, "thread.name.video.encoder"

    new-instance v2, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$4;

    invoke-direct {v2, p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$4;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)V

    invoke-static {v0, v2}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1116
    iget-boolean v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->w:Z

    if-eqz v0, :cond_2

    .line 1120
    const-string/jumbo v0, "thread.name.audio.encoder"

    new-instance v2, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$5;

    invoke-direct {v2, p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$5;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)V

    invoke-static {v0, v2}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1127
    const-string/jumbo v0, "thread.name.audio.recorder"

    new-instance v2, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$6;

    invoke-direct {v2, p0}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$6;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;)V

    invoke-static {v0, v2}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1136
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
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1173
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->t:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;

    monitor-enter v1

    .line 1174
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->t:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;

    iget-boolean v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;->b:Z

    if-eqz v0, :cond_0

    .line 1175
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Released"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1177
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->t:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;->a:I

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->t:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;->a:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 1178
    monitor-exit v1

    .line 1187
    :goto_0
    return-void

    .line 1180
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->t:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;

    const/4 v2, 0x4

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$c;->a:I

    .line 1183
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$1;)V

    .line 1184
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx$b;->d:Z

    .line 1185
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderEx;->blockingDeque:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingDeque;->add(Ljava/lang/Object;)Z

    .line 1186
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
