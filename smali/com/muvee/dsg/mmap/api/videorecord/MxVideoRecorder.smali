.class public Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;
.super Ljava/lang/Object;
.source "MxVideoRecorder.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$a;,
        Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;,
        Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;,
        Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$TextParam;,
        Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$SmartVideoRecorderCallBack;,
        Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;,
        Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;
    }
.end annotation


# static fields
.field private static final h:[Ljava/lang/String;


# instance fields
.field private A:J

.field private B:J

.field private C:Landroid/graphics/Bitmap;

.field private D:Landroid/graphics/Canvas;

.field private E:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$TextParam;

.field private F:Lcom/muvee/dsg/text/TextRenderHelper;

.field private G:J

.field private H:J

.field private I:[Ljava/nio/ByteBuffer;

.field private J:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;

.field private K:Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;

.field private L:Lcom/muvee/dsg/mmap/api/videorecord/e;

.field private M:Lcom/muvee/dsg/mmap/api/videorecord/FrameBuffer;

.field private N:Lcom/muvee/dsg/mmap/api/videorecord/FrameBuffer;

.field a:Lcom/muvee/dsg/mmap/api/resampler/ReSampler;

.field b:Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;

.field public blockingDeque:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque",
            "<",
            "Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;

.field d:J

.field e:Ljava/nio/ByteBuffer;

.field private f:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

.field private g:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;

.field private i:Landroid/media/MediaCodec;

.field private j:Lcom/muvee/dsg/mmap/api/videorecord/a;

.field private k:Landroid/media/MediaMuxer;

.field private l:I

.field private m:I

.field private n:Lcom/muvee/dsg/mmap/api/videorecord/c;

.field private o:Lcom/muvee/dsg/mmap/api/videorecord/d;

.field private p:[I

.field private q:Landroid/graphics/SurfaceTexture;

.field private r:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderInitParam;

.field private s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

.field private t:Landroid/view/Surface;

.field private u:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$SmartVideoRecorderCallBack;

.field private v:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;

.field private w:F

.field private x:Landroid/media/MediaCodec;

.field private y:Z

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 215
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

    sput-object v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->h:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    sget-object v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->EFFECT_NORMAL:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->f:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    .line 129
    sget-object v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;->EFFECT_NORMAL:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->g:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;

    .line 213
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->blockingDeque:Ljava/util/concurrent/BlockingDeque;

    .line 256
    iput v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->l:I

    .line 257
    iput v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->m:I

    .line 268
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$1;)V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->v:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;

    .line 269
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->w:F

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->y:Z

    .line 273
    new-instance v0, Lcom/muvee/dsg/mmap/api/resampler/ReSampler;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/resampler/ReSampler;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->a:Lcom/muvee/dsg/mmap/api/resampler/ReSampler;

    .line 274
    new-instance v0, Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->b:Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;

    .line 275
    new-instance v0, Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->c:Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;

    .line 276
    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->d:J

    .line 277
    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->e:Ljava/nio/ByteBuffer;

    .line 413
    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->z:J

    .line 414
    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->A:J

    .line 415
    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->B:J

    .line 1380
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->H:J

    .line 371
    return-void
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->q:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$TextParam;)Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$TextParam;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->E:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$TextParam;

    return-object p1
.end method

.method private a()Lcom/muvee/dsg/text/TextRenderHelper;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->F:Lcom/muvee/dsg/text/TextRenderHelper;

    if-nez v0, :cond_0

    .line 441
    new-instance v0, Lcom/muvee/dsg/text/TextRenderHelper;

    invoke-direct {v0}, Lcom/muvee/dsg/text/TextRenderHelper;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->F:Lcom/muvee/dsg/text/TextRenderHelper;

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->F:Lcom/muvee/dsg/text/TextRenderHelper;

    return-object v0
.end method

.method private a(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->k:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 1093
    return-void
.end method

.method private a(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$a;)V
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/4 v2, 0x0

    .line 1097
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$a;->b:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    .line 1098
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->x:Landroid/media/MediaCodec;

    invoke-virtual {v0, v8, v9}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 1099
    if-ltz v1, :cond_1

    .line 1101
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$a;->a:[B

    if-eqz v0, :cond_2

    .line 1104
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->I:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1105
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->I:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v1

    iget-object v3, p1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$a;->a:[B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1106
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->x:Landroid/media/MediaCodec;

    iget-object v3, p1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$a;->a:[B

    array-length v3, v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 1148
    :cond_1
    :goto_0
    return-void

    .line 1108
    :cond_2
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->x:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    .line 1112
    :cond_3
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->b:Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;->sampleRate:I

    int-to-float v0, v0

    iget v1, p1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$a;->b:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 1113
    iget-wide v4, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->d:J

    int-to-long v6, v0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_4

    .line 1114
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->a:Lcom/muvee/dsg/mmap/api/resampler/ReSampler;

    invoke-virtual {v1}, Lcom/muvee/dsg/mmap/api/resampler/ReSampler;->close()V

    .line 1115
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->c:Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;

    iput v0, v1, Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;->sampleRate:I

    .line 1116
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->a:Lcom/muvee/dsg/mmap/api/resampler/ReSampler;

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->b:Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;

    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->c:Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;

    invoke-virtual {v1, v3, v4}, Lcom/muvee/dsg/mmap/api/resampler/ReSampler;->init(Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;Lcom/muvee/dsg/mmap/api/resampler/AudioDataParam;)V

    .line 1117
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->d:J

    .line 1121
    :cond_4
    new-instance v7, Lcom/muvee/dsg/mmap/api/resampler/ReSamplerFrameParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/resampler/ReSamplerFrameParam;-><init>()V

    .line 1122
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1123
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->e:Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$a;->a:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1124
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->e:Ljava/nio/ByteBuffer;

    iput-object v0, v7, Lcom/muvee/dsg/mmap/api/resampler/ReSamplerFrameParam;->buffer:Ljava/nio/ByteBuffer;

    .line 1125
    const/16 v0, 0x1000

    iput v0, v7, Lcom/muvee/dsg/mmap/api/resampler/ReSamplerFrameParam;->frameSize:I

    .line 1126
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->a:Lcom/muvee/dsg/mmap/api/resampler/ReSampler;

    invoke-virtual {v0, v7}, Lcom/muvee/dsg/mmap/api/resampler/ReSampler;->attachFrame(Lcom/muvee/dsg/mmap/api/resampler/ReSamplerFrameParam;)V

    .line 1129
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->a:Lcom/muvee/dsg/mmap/api/resampler/ReSampler;

    invoke-virtual {v0, v7}, Lcom/muvee/dsg/mmap/api/resampler/ReSampler;->getFrame(Lcom/muvee/dsg/mmap/api/resampler/ReSamplerFrameParam;)V

    .line 1130
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1131
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->e:Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$a;->a:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1132
    iget v0, v7, Lcom/muvee/dsg/mmap/api/resampler/ReSamplerFrameParam;->frameSize:I

    if-lez v0, :cond_1

    .line 1135
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->x:Landroid/media/MediaCodec;

    invoke-virtual {v0, v8, v9}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 1136
    if-ltz v1, :cond_5

    .line 1137
    iget-object v0, p1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$a;->a:[B

    if-eqz v0, :cond_5

    .line 1140
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->I:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1141
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->I:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v1

    iget-object v3, p1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$a;->a:[B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1142
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->x:Landroid/media/MediaCodec;

    iget-object v3, p1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$a;->a:[B

    array-length v3, v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->i()V

    return-void
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$a;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->a(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$a;)V

    return-void
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorderFrameParam;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->a(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorderFrameParam;)V

    return-void
.end method

.method private a(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorderFrameParam;)V
    .locals 12

    .prologue
    .line 591
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 593
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->q:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 594
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->q:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v10

    .line 595
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->B:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 596
    iput-wide v10, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->B:J

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->j:Lcom/muvee/dsg/mmap/api/videorecord/a;

    if-eqz v0, :cond_4

    .line 629
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->r:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderInitParam;

    iget v2, v2, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderInitParam;->previewWidth:I

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->r:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderInitParam;

    iget v3, v3, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderInitParam;->previewHeight:I

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 630
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->j:Lcom/muvee/dsg/mmap/api/videorecord/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/a;->b(I)V

    .line 631
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->j:Lcom/muvee/dsg/mmap/api/videorecord/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v10, v11, v1}, Lcom/muvee/dsg/mmap/api/videorecord/a;->a(JI)V

    .line 642
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->g:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;->c:[[F

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 643
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->g:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;->c:[[F

    aget-object v1, v1, v0

    .line 644
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->g:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;->a:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->g:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 645
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->n:Lcom/muvee/dsg/mmap/api/videorecord/c;

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->g:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;->b:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->g:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;->a:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/muvee/dsg/mmap/api/videorecord/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    :goto_1
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->n:Lcom/muvee/dsg/mmap/api/videorecord/c;

    invoke-virtual {v2, v1}, Lcom/muvee/dsg/mmap/api/videorecord/c;->a([F)V

    .line 651
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->n:Lcom/muvee/dsg/mmap/api/videorecord/c;

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->p:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/muvee/dsg/mmap/api/videorecord/c;->a(I)V

    .line 642
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 647
    :cond_1
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->n:Lcom/muvee/dsg/mmap/api/videorecord/c;

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->f:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->f:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/muvee/dsg/mmap/api/videorecord/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 654
    :cond_2
    sget-object v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$8;->a:[I

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->f:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    invoke-virtual {v1}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 670
    :goto_2
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->j:Lcom/muvee/dsg/mmap/api/videorecord/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/a;->c(I)Z

    .line 674
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    if-eqz v0, :cond_4

    .line 678
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->v:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 681
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->K:Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    iget v1, v1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;->width:I

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    iget v2, v2, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;->height:I

    invoke-virtual {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->getOffset(II)I

    move-result v0

    .line 683
    if-gez v0, :cond_a

    .line 684
    mul-int/lit8 v0, v0, -0x1

    .line 685
    const-string v1, "com.muvee.dsg.mmap.api.videorecord.SmartVideoRecorderEx"

    const-string v2, "::swap: testingIssue %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 686
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 685
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->J:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;->c:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$TextParam;

    if-eqz v1, :cond_a

    .line 689
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->J:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;->c:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$TextParam;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    :try_start_1
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->J:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;->c:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$TextParam;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 691
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v6, v0

    .line 696
    :goto_3
    :try_start_2
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->K:Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    iget v1, v1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;->width:I

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    iget v2, v2, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;->height:I

    invoke-virtual {v0, v6, v1, v2}, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->beforeRender(III)V

    .line 708
    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->g:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;->c:[[F

    array-length v1, v1

    if-ge v0, v1, :cond_7

    .line 709
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->g:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;->c:[[F

    aget-object v1, v1, v0

    .line 710
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->g:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;->a:[Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->g:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_6

    .line 711
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->n:Lcom/muvee/dsg/mmap/api/videorecord/c;

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->g:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;->b:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->g:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;->a:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/muvee/dsg/mmap/api/videorecord/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    :goto_5
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->n:Lcom/muvee/dsg/mmap/api/videorecord/c;

    invoke-virtual {v2, v1}, Lcom/muvee/dsg/mmap/api/videorecord/c;->a([F)V

    .line 717
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->n:Lcom/muvee/dsg/mmap/api/videorecord/c;

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->p:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/muvee/dsg/mmap/api/videorecord/c;->a(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 708
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 656
    :pswitch_0
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 657
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 658
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->o:Lcom/muvee/dsg/mmap/api/videorecord/d;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->M:Lcom/muvee/dsg/mmap/api/videorecord/FrameBuffer;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videorecord/FrameBuffer;->getTextureId()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/muvee/dsg/mmap/api/videorecord/d;->a(Landroid/graphics/SurfaceTexture;ZIZLandroid/graphics/RectF;)V

    .line 659
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    goto/16 :goto_2

    .line 662
    :pswitch_1
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 663
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 664
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->o:Lcom/muvee/dsg/mmap/api/videorecord/d;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->N:Lcom/muvee/dsg/mmap/api/videorecord/FrameBuffer;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videorecord/FrameBuffer;->getTextureId()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/muvee/dsg/mmap/api/videorecord/d;->a(Landroid/graphics/SurfaceTexture;ZIZLandroid/graphics/RectF;)V

    .line 665
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    goto/16 :goto_2

    .line 691
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

    .line 777
    :catch_0
    move-exception v0

    .line 778
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

    .line 784
    :cond_3
    :goto_6
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->u:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$SmartVideoRecorderCallBack;

    if-eqz v0, :cond_4

    .line 785
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->u:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$SmartVideoRecorderCallBack;

    iget-wide v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->z:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-wide v4, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->A:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$SmartVideoRecorderCallBack;->onProgressUpdate(JJ)V

    .line 790
    :cond_4
    iput-wide v10, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->B:J

    .line 791
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->H:J

    const-wide/16 v2, 0xa

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

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

    .line 792
    :cond_5
    return-void

    .line 713
    :cond_6
    :try_start_5
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->n:Lcom/muvee/dsg/mmap/api/videorecord/c;

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->f:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->f:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/muvee/dsg/mmap/api/videorecord/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 720
    :cond_7
    sget-object v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$8;->a:[I

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->f:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    invoke-virtual {v1}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 737
    :goto_7
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->K:Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;->unBind()V

    .line 739
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->z:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_9

    .line 740
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->z:J

    .line 741
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->A:J

    .line 752
    :goto_8
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$1;)V

    .line 753
    iget-wide v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->A:J

    iput-wide v2, v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;->a:J

    .line 754
    iput v6, v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;->b:I

    .line 755
    iget-object v1, p1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorderFrameParam;->textParam:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$TextParam;

    iput-object v1, v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;->c:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$TextParam;

    .line 757
    iget-object v1, p1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorderFrameParam;->cropRect:Landroid/graphics/RectF;

    if-eqz v1, :cond_8

    .line 758
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorderFrameParam;->cropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorderFrameParam;->cropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorderFrameParam;->cropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, p1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorderFrameParam;->cropRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;->e:Landroid/graphics/RectF;

    .line 761
    :cond_8
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->blockingDeque:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingDeque;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 722
    :pswitch_2
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 723
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 724
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->o:Lcom/muvee/dsg/mmap/api/videorecord/d;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->M:Lcom/muvee/dsg/mmap/api/videorecord/FrameBuffer;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videorecord/FrameBuffer;->getTextureId()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/muvee/dsg/mmap/api/videorecord/d;->a(Landroid/graphics/SurfaceTexture;ZIZLandroid/graphics/RectF;)V

    .line 725
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    goto :goto_7

    .line 728
    :pswitch_3
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 729
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 730
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->o:Lcom/muvee/dsg/mmap/api/videorecord/d;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->N:Lcom/muvee/dsg/mmap/api/videorecord/FrameBuffer;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videorecord/FrameBuffer;->getTextureId()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/muvee/dsg/mmap/api/videorecord/d;->a(Landroid/graphics/SurfaceTexture;ZIZLandroid/graphics/RectF;)V

    .line 731
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    goto/16 :goto_7

    .line 744
    :cond_9
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->B:J

    sub-long v0, v10, v0

    .line 745
    iget-wide v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->z:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->z:J

    .line 746
    iget-wide v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->A:J

    long-to-float v2, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->w:F

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->A:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_8

    :cond_a
    move v6, v0

    goto/16 :goto_3

    .line 654
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 720
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic b(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->K:Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 470
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->E:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$TextParam;

    .line 475
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->blockingDeque:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->J:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;

    .line 477
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->J:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;

    iget-boolean v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;->d:Z

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->i:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 479
    const-string/jumbo v0, "thread.name.gl"

    new-instance v1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$9;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$9;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 588
    return-void

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->J:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;->c:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$TextParam;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->J:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;->c:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$TextParam;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$TextParam;->a(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$TextParam;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 498
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->J:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;

    iget-object v1, v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;->c:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$TextParam;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    :try_start_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->J:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;->c:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$TextParam;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 500
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->J:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;->c:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$TextParam;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$TextParam;->a(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$TextParam;Z)Z

    .line 501
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 504
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->C:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 505
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;->width:I

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    iget v1, v1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->C:Landroid/graphics/Bitmap;

    .line 506
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->C:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->D:Landroid/graphics/Canvas;

    .line 515
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 517
    const-string/jumbo v0, "thread.name.gl"

    new-instance v2, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$10;

    invoke-direct {v2, p0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$10;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 577
    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 578
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 579
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

    .line 581
    :catch_0
    move-exception v0

    .line 583
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 501
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    .line 509
    :cond_3
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;->width:I

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->C:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;->height:I

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->C:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 510
    :cond_4
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;->width:I

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    iget v1, v1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->C:Landroid/graphics/Bitmap;

    .line 511
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->D:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->C:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1
.end method

.method static synthetic c(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 805
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->j:Lcom/muvee/dsg/mmap/api/videorecord/a;

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->j:Lcom/muvee/dsg/mmap/api/videorecord/a;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->t:Landroid/view/Surface;

    invoke-virtual {v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videorecord/a;->a(ILjava/lang/Object;)V

    .line 808
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Lcom/muvee/dsg/mmap/api/videorecord/a;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->j:Lcom/muvee/dsg/mmap/api/videorecord/a;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 811
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->j:Lcom/muvee/dsg/mmap/api/videorecord/a;

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->j:Lcom/muvee/dsg/mmap/api/videorecord/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/a;->a(I)V

    .line 814
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->J:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;

    return-object v0
.end method

.method private e()V
    .locals 11

    .prologue
    const-wide/16 v4, -0x1

    const/4 v10, 0x0

    .line 820
    .line 821
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->i:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    move-wide v2, v4

    .line 823
    :cond_0
    :goto_0
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 824
    iget-object v6, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->i:Landroid/media/MediaCodec;

    invoke-virtual {v6, v1, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v6

    .line 825
    if-lez v6, :cond_5

    .line 827
    iget v7, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v7, v7, 0x4

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    .line 865
    const-string/jumbo v0, "thread.name.gl"

    new-instance v1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$11;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$11;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 871
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->i:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 872
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->i:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 874
    const/4 v0, -0x1

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->l:I

    .line 875
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->g()V

    .line 878
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->u:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$SmartVideoRecorderCallBack;

    if-eqz v0, :cond_1

    .line 879
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->u:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$SmartVideoRecorderCallBack;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;->savePath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$SmartVideoRecorderCallBack;->onSaveCompleted(Ljava/lang/String;)V

    .line 882
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    .line 883
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->v:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;

    iput v10, v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;->a:I

    .line 885
    return-void

    .line 831
    :cond_2
    iget v7, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->l:I

    if-gez v7, :cond_3

    .line 832
    iget-object v7, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->k:Landroid/media/MediaMuxer;

    iget-object v8, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->i:Landroid/media/MediaCodec;

    invoke-virtual {v8}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v7

    iput v7, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->l:I

    .line 833
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->f()V

    .line 840
    :cond_3
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-gez v7, :cond_4

    .line 841
    iget-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 844
    :cond_4
    new-instance v7, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v7}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 845
    iget v8, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput v8, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 846
    iget v8, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iput v8, v7, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 847
    iget-wide v8, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long/2addr v8, v2

    iput-wide v8, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 848
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput v1, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 853
    iget v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->l:I

    aget-object v8, v0, v6

    invoke-direct {p0, v1, v8, v7}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->a(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 855
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->i:Landroid/media/MediaCodec;

    invoke-virtual {v1, v6, v10}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_0

    .line 858
    :cond_5
    const/4 v1, -0x3

    if-ne v6, v1, :cond_0

    .line 859
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->i:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto/16 :goto_0
.end method

.method static synthetic f(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Lcom/muvee/dsg/mmap/api/videorecord/e;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->L:Lcom/muvee/dsg/mmap/api/videorecord/e;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 890
    iget-boolean v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->y:Z

    if-eqz v0, :cond_1

    .line 891
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->l:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->m:I

    if-ltz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->k:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 893
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->k:Landroid/media/MediaMuxer;

    monitor-enter v1

    .line 894
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->k:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 895
    monitor-exit v1

    .line 909
    :goto_0
    return-void

    .line 895
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 898
    :cond_0
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->k:Landroid/media/MediaMuxer;

    monitor-enter v1

    .line 900
    :try_start_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->k:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 904
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

    .line 901
    :catch_0
    move-exception v0

    .line 902
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 907
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->k:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    goto :goto_0
.end method

.method static synthetic g(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$TextParam;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->E:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$TextParam;

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 913
    iget-boolean v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->y:Z

    if-eqz v0, :cond_2

    .line 914
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->m:I

    if-gez v0, :cond_1

    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->l:I

    if-gez v0, :cond_1

    .line 915
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->k:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 916
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->k:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 917
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->k:Landroid/media/MediaMuxer;

    monitor-enter v1

    .line 918
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->k:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 919
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 920
    iput-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->k:Landroid/media/MediaMuxer;

    .line 921
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->v:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;

    iget-boolean v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;->b:Z

    if-eqz v0, :cond_0

    .line 922
    invoke-virtual {p0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->release()V

    .line 944
    :cond_0
    :goto_0
    return-void

    .line 919
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 925
    :cond_1
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->k:Landroid/media/MediaMuxer;

    monitor-enter v1

    .line 927
    :try_start_2
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->k:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 931
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

    .line 928
    :catch_0
    move-exception v0

    .line 929
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 934
    :cond_2
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->k:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 935
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->k:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 936
    iput-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->k:Landroid/media/MediaMuxer;

    .line 937
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->v:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;

    iget-boolean v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;->b:Z

    if-eqz v0, :cond_0

    .line 938
    invoke-virtual {p0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->release()V

    goto :goto_0
.end method

.method static synthetic h(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->C:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private h()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 951
    :try_start_0
    const-string/jumbo v0, "video/avc"

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->i:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 956
    :goto_0
    const-string/jumbo v0, "video/avc"

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    iget v1, v1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;->width:I

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    iget v2, v2, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;->height:I

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 957
    const-string v1, "bitrate"

    const v2, 0x5b8d80

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 958
    const-string v1, "frame-rate"

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 959
    const-string v1, "color-format"

    const v2, 0x7f000789

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 960
    const-string v1, "i-frame-interval"

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 961
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->i:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v4, v4, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 963
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->i:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->t:Landroid/view/Surface;

    .line 964
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->i:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 968
    const-string/jumbo v0, "thread.name.video.encoder.output"

    new-instance v1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$12;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$12;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 976
    const-string/jumbo v0, "thread.name.gl"

    new-instance v1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$13;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$13;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 984
    return-void

    .line 952
    :catch_0
    move-exception v0

    .line 953
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic i(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Lcom/muvee/dsg/text/TextRenderHelper;
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->a()Lcom/muvee/dsg/text/TextRenderHelper;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x1f4

    .line 990
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/a;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->r:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderInitParam;

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderInitParam;->previewSurface:Landroid/view/Surface;

    invoke-direct {v0, v1}, Lcom/muvee/dsg/mmap/api/videorecord/a;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->j:Lcom/muvee/dsg/mmap/api/videorecord/a;

    .line 991
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->j:Lcom/muvee/dsg/mmap/api/videorecord/a;

    invoke-virtual {v0, v3}, Lcom/muvee/dsg/mmap/api/videorecord/a;->b(I)V

    .line 993
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->K:Lcom/muvee/dsg/mmap/api/videorecord/FrameBufferHelper;

    .line 999
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/c;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/videorecord/c;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->n:Lcom/muvee/dsg/mmap/api/videorecord/c;

    .line 1000
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->n:Lcom/muvee/dsg/mmap/api/videorecord/c;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videorecord/c;->a()V

    .line 1002
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/d;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/videorecord/d;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->o:Lcom/muvee/dsg/mmap/api/videorecord/d;

    .line 1003
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->o:Lcom/muvee/dsg/mmap/api/videorecord/d;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videorecord/d;->a()V

    .line 1005
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/e;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/videorecord/e;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->L:Lcom/muvee/dsg/mmap/api/videorecord/e;

    .line 1006
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->L:Lcom/muvee/dsg/mmap/api/videorecord/e;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videorecord/e;->a()V

    .line 1008
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->p:[I

    .line 1009
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->p:[I

    invoke-static {v4, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 1011
    const-string/jumbo v0, "thread.name.camera"

    new-instance v1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$14;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$14;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1022
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBuffer;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/videorecord/FrameBuffer;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->M:Lcom/muvee/dsg/mmap/api/videorecord/FrameBuffer;

    .line 1023
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->M:Lcom/muvee/dsg/mmap/api/videorecord/FrameBuffer;

    invoke-virtual {v0, v2, v2}, Lcom/muvee/dsg/mmap/api/videorecord/FrameBuffer;->create(II)V

    .line 1024
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->M:Lcom/muvee/dsg/mmap/api/videorecord/FrameBuffer;

    invoke-virtual {v0, v2, v2}, Lcom/muvee/dsg/mmap/api/videorecord/FrameBuffer;->bind(II)V

    .line 1026
    const/4 v0, 0x0

    const v1, 0x3e408312    # 0.188f

    const v2, 0x3eb0a3d7    # 0.345f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 1027
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 1029
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->M:Lcom/muvee/dsg/mmap/api/videorecord/FrameBuffer;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videorecord/FrameBuffer;->unBind()V

    .line 1031
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/FrameBuffer;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/videorecord/FrameBuffer;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->N:Lcom/muvee/dsg/mmap/api/videorecord/FrameBuffer;

    .line 1033
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "purple_thing.png"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 1035
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1036
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->N:Lcom/muvee/dsg/mmap/api/videorecord/FrameBuffer;

    invoke-virtual {v1, v0}, Lcom/muvee/dsg/mmap/api/videorecord/FrameBuffer;->setupTextRenderToTexture(Landroid/graphics/Bitmap;)V

    .line 1038
    return-void
.end method

.method static synthetic j(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Landroid/graphics/Canvas;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->D:Landroid/graphics/Canvas;

    return-object v0
.end method

.method private j()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1044
    const-wide/16 v2, 0x0

    .line 1045
    const v1, 0x46b567e9

    .line 1046
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->x:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1048
    :cond_0
    :goto_0
    new-instance v4, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v4}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 1049
    iget-object v5, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->x:Landroid/media/MediaCodec;

    const-wide/16 v6, -0x1

    invoke-virtual {v5, v4, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v5

    .line 1050
    if-ltz v5, :cond_4

    .line 1052
    iget v6, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->m:I

    if-gez v6, :cond_1

    .line 1053
    iget-object v6, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->k:Landroid/media/MediaMuxer;

    iget-object v7, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->x:Landroid/media/MediaCodec;

    invoke-virtual {v7}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v6

    iput v6, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->m:I

    .line 1054
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->f()V

    .line 1058
    :cond_1
    iget v6, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x4

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    .line 1084
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->x:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 1085
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->x:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 1087
    const/4 v0, -0x1

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->m:I

    .line 1088
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->g()V

    .line 1090
    return-void

    .line 1062
    :cond_2
    iget v6, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    if-nez v6, :cond_3

    .line 1064
    new-instance v6, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v6}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 1065
    iput v8, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 1066
    iput v8, v6, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 1067
    iput-wide v2, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 1068
    iget v7, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput v7, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 1069
    aget-object v7, v0, v5

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1073
    iget v4, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->m:I

    aget-object v7, v0, v5

    invoke-direct {p0, v4, v7, v6}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->a(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 1075
    long-to-float v2, v2

    add-float/2addr v2, v1

    float-to-long v2, v2

    .line 1077
    :cond_3
    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->x:Landroid/media/MediaCodec;

    invoke-virtual {v4, v5, v8}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_0

    .line 1078
    :cond_4
    const/4 v4, -0x3

    if-ne v5, v4, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->x:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic k(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Lcom/muvee/dsg/mmap/api/videorecord/d;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->o:Lcom/muvee/dsg/mmap/api/videorecord/d;

    return-object v0
.end method

.method private k()V
    .locals 5

    .prologue
    const/4 v3, 0x2

    .line 1154
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 1155
    const-string v1, "mime"

    const-string v2, "audio/mp4a-latm"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    const-string v1, "aac-profile"

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1157
    const-string/jumbo v1, "sample-rate"

    const v2, 0xac44

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1158
    const-string v1, "channel-count"

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1159
    const-string v1, "bitrate"

    const v2, 0x1f400

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1160
    const-string v1, "max-input-size"

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1163
    :try_start_0
    const-string v1, "audio/mp4a-latm"

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->x:Landroid/media/MediaCodec;

    .line 1164
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->x:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 1165
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->x:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 1166
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->x:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->I:[Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1173
    :goto_0
    const-string/jumbo v0, "thread.name.audio.encoder.output"

    new-instance v1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$15;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$15;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1179
    return-void

    .line 1167
    :catch_0
    move-exception v0

    .line 1168
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

    .line 1183
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

    .line 1185
    const v0, 0xac44

    invoke-static {v0, v3, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    .line 1187
    new-instance v0, Landroid/media/AudioRecord;

    const v2, 0xac44

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 1193
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 1196
    :goto_0
    new-array v2, v9, [B

    .line 1197
    invoke-virtual {v0, v2, v1, v9}, Landroid/media/AudioRecord;->read([BII)I

    .line 1200
    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->v:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;

    iget v3, v3, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;->a:I

    if-ne v3, v8, :cond_0

    .line 1203
    new-instance v3, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$a;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$1;)V

    .line 1204
    iput-object v2, v3, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$a;->a:[B

    .line 1205
    iget v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->w:F

    iput v2, v3, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$a;->b:F

    .line 1211
    const-string/jumbo v2, "thread.name.audio.encoder"

    new-instance v4, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$16;

    invoke-direct {v4, p0, v3}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$16;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$a;)V

    invoke-static {v2, v4}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1220
    :cond_0
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->v:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;

    monitor-enter v2

    .line 1221
    :try_start_0
    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->v:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;

    iget v3, v3, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;->a:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 1222
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1230
    const-string/jumbo v1, "thread.name.audio.encoder"

    new-instance v2, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$2;

    invoke-direct {v2, p0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$2;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)V

    invoke-static {v1, v2}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1237
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 1238
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 1242
    return-void

    .line 1224
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

.method static synthetic l(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->d()V

    return-void
.end method

.method static synthetic m(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->e()V

    return-void
.end method

.method static synthetic n(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->c()V

    return-void
.end method

.method static synthetic o(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)[I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->p:[I

    return-object v0
.end method

.method static synthetic p(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->q:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic q(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$SmartVideoRecorderCallBack;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->u:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$SmartVideoRecorderCallBack;

    return-object v0
.end method

.method static synthetic r(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->j()V

    return-void
.end method

.method static synthetic s(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->b()V

    return-void
.end method

.method static synthetic t(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->h()V

    return-void
.end method

.method static synthetic u(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->k()V

    return-void
.end method

.method static synthetic v(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->l()V

    return-void
.end method


# virtual methods
.method public enableAudio(Z)V
    .locals 0

    .prologue
    .line 1490
    iput-boolean p1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->y:Z

    .line 1491
    return-void
.end method

.method public getCurrentSpeed()F
    .locals 1

    .prologue
    .line 1476
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->w:F

    return v0
.end method

.method public final handleOnFrameAvailable(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorderFrameParam;)V
    .locals 2

    .prologue
    .line 1417
    const-string/jumbo v0, "thread.name.gl"

    new-instance v1, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$7;

    invoke-direct {v1, p0, p1}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$7;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorderFrameParam;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->postAtFrontOfQueue(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1422
    return-void
.end method

.method public init(Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderInitParam;)V
    .locals 3

    .prologue
    .line 379
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->r:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderInitParam;

    .line 380
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$1;

    invoke-direct {v0, p0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$1;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)V

    .line 409
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 411
    return-void
.end method

.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x3e8

    .line 1398
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1399
    iget-wide v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->G:J

    sub-long v2, v0, v2

    div-long/2addr v2, v4

    div-long/2addr v2, v4

    .line 1400
    iput-wide v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->G:J

    .line 1401
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->H:J

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

    .line 1403
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->u:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$SmartVideoRecorderCallBack;

    if-eqz v0, :cond_1

    .line 1404
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->u:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$SmartVideoRecorderCallBack;

    invoke-interface {v0, p1}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$SmartVideoRecorderCallBack;->onFrameAvailable(Landroid/graphics/SurfaceTexture;)Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorderFrameParam;

    move-result-object v0

    .line 1406
    invoke-virtual {p0, v0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->handleOnFrameAvailable(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorderFrameParam;)V

    .line 1412
    :goto_0
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->H:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->H:J

    .line 1413
    return-void

    .line 1409
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->handleOnFrameAvailable(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorderFrameParam;)V

    goto :goto_0
.end method

.method public pauseRecording()V
    .locals 3

    .prologue
    .line 1332
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->v:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;

    monitor-enter v1

    .line 1333
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->v:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;

    iget-boolean v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;->b:Z

    if-eqz v0, :cond_0

    .line 1334
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Released"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1336
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->v:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;->a:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 1337
    monitor-exit v1

    .line 1341
    :goto_0
    return-void

    .line 1339
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->v:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;

    const/4 v2, 0x2

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;->a:I

    .line 1340
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

    .line 1436
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->v:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;

    monitor-enter v1

    .line 1438
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->v:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;->a:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->v:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;->a:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1439
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->v:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;

    const/4 v2, 0x4

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;->a:I

    .line 1442
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$1;)V

    .line 1443
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;->d:Z

    .line 1444
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->blockingDeque:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingDeque;->add(Ljava/lang/Object;)Z

    .line 1446
    monitor-exit v1

    .line 1469
    :goto_0
    return-void

    .line 1449
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->v:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;->b:Z

    .line 1451
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->q:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 1453
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->j:Lcom/muvee/dsg/mmap/api/videorecord/a;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videorecord/a;->a()V

    .line 1454
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->j:Lcom/muvee/dsg/mmap/api/videorecord/a;

    .line 1463
    sget-object v2, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->h:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 1464
    invoke-static {v4}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->getHandler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1463
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1468
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
    .line 1347
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->v:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;

    monitor-enter v1

    .line 1348
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->v:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;

    iget-boolean v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;->b:Z

    if-eqz v0, :cond_0

    .line 1349
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Released"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1351
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->v:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;->a:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 1352
    monitor-exit v1

    .line 1356
    :goto_0
    return-void

    .line 1354
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->v:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;

    const/4 v2, 0x1

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;->a:I

    .line 1355
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCallBack(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$SmartVideoRecorderCallBack;)V
    .locals 0

    .prologue
    .line 1429
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->u:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$SmartVideoRecorderCallBack;

    .line 1430
    return-void
.end method

.method public setCurrentSpeed(F)V
    .locals 0

    .prologue
    .line 1485
    iput p1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->w:F

    .line 1486
    return-void
.end method

.method public setFillterEffectType(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;)V
    .locals 0

    .prologue
    .line 1498
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->f:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FillterEffectType;

    .line 1499
    return-void
.end method

.method public setFrameEffectType(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;)V
    .locals 0

    .prologue
    .line 1494
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->g:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$FrameEffectType;

    .line 1495
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

    .line 1253
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

    .line 1255
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->v:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;

    monitor-enter v1

    .line 1256
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->v:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;

    iget-boolean v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;->b:Z

    if-eqz v0, :cond_0

    .line 1257
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Released"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1259
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->v:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;->a:I

    if-eqz v0, :cond_1

    .line 1260
    monitor-exit v1

    .line 1326
    :goto_0
    return-void

    .line 1262
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->v:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;

    const/4 v2, 0x1

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;->a:I

    .line 1263
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->s:Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;

    .line 1265
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->z:J

    .line 1266
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->A:J

    .line 1268
    const/4 v0, -0x1

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->l:I

    .line 1269
    const/4 v0, -0x1

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->m:I

    .line 1271
    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v2, p1, Lcom/muvee/dsg/mmap/api/videorecord/SmartVideoRecorderSaveParam;->savePath:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->k:Landroid/media/MediaMuxer;

    .line 1273
    const-string/jumbo v0, "thread.name.saving"

    new-instance v2, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$3;

    invoke-direct {v2, p0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$3;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)V

    invoke-static {v0, v2}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1299
    const-string/jumbo v0, "thread.name.video.encoder"

    new-instance v2, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$4;

    invoke-direct {v2, p0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$4;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)V

    invoke-static {v0, v2}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1305
    iget-boolean v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->y:Z

    if-eqz v0, :cond_2

    .line 1309
    const-string/jumbo v0, "thread.name.audio.encoder"

    new-instance v2, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$5;

    invoke-direct {v2, p0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$5;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)V

    invoke-static {v0, v2}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1316
    const-string/jumbo v0, "thread.name.audio.recorder"

    new-instance v2, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$6;

    invoke-direct {v2, p0}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$6;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;)V

    invoke-static {v0, v2}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1325
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

    .line 1362
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->v:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;

    monitor-enter v1

    .line 1363
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->v:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;

    iget-boolean v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;->b:Z

    if-eqz v0, :cond_0

    .line 1364
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Released"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1366
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->v:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;->a:I

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->v:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;->a:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 1367
    monitor-exit v1

    .line 1376
    :goto_0
    return-void

    .line 1369
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->v:Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;

    const/4 v2, 0x4

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$c;->a:I

    .line 1372
    new-instance v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;-><init>(Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$1;)V

    .line 1373
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder$b;->d:Z

    .line 1374
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videorecord/MxVideoRecorder;->blockingDeque:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingDeque;->add(Ljava/lang/Object;)Z

    .line 1375
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
