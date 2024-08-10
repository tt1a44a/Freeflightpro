.class public Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;
.super Lcom/muvee/dsg/mmapcodec/Codec;
.source "MediaCodecTextureDecoder.java"

# interfaces
.implements Lcom/muvee/dsg/mmapcodec/CodecConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$a;,
        Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$CodecOutputSurface;
    }
.end annotation


# static fields
.field private static j:Ljava/lang/String;


# instance fields
.field private A:Lcom/muvee/dsg/mmapcodec/TimeMap;

.field private B:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

.field a:I

.field b:I

.field c:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

.field d:J

.field public decodedFrameData:Ljava/nio/ByteBuffer;

.field private e:Ljava/lang/String;

.field private f:Landroid/media/MediaFormat;

.field private g:Z

.field private h:Z

.field private i:J

.field private k:Landroid/media/MediaCodec;

.field private l:Landroid/media/MediaFormat;

.field private m:[Ljava/nio/ByteBuffer;

.field private n:Landroid/media/MediaCodec$BufferInfo;

.field private o:Z

.field private volatile p:Z

.field private volatile q:Z

.field private volatile r:Z

.field private s:I

.field private t:I

.field private u:Z

.field private v:Landroid/media/MediaExtractor;

.field private w:Landroid/media/MediaExtractor;

.field private x:Lcom/muvee/dsg/mmap/api/os/util/LockRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/muvee/dsg/mmap/api/os/util/LockRunnable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "Video Decoder"

    sput-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/muvee/dsg/mmapcodec/Codec;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->e:Ljava/lang/String;

    .line 42
    iput-boolean v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->g:Z

    .line 43
    iput-boolean v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->h:Z

    .line 44
    iput-wide v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->i:J

    .line 53
    iput-boolean v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->o:Z

    .line 54
    iput-boolean v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->p:Z

    .line 55
    iput-boolean v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->q:Z

    .line 56
    iput-boolean v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->r:Z

    .line 58
    iput v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->s:I

    .line 60
    iput v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->t:I

    .line 63
    iput-boolean v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->u:Z

    .line 64
    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->v:Landroid/media/MediaExtractor;

    .line 65
    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->w:Landroid/media/MediaExtractor;

    .line 66
    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->x:Lcom/muvee/dsg/mmap/api/os/util/LockRunnable;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->y:Z

    .line 71
    iput v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->z:I

    .line 73
    new-instance v0, Lcom/muvee/dsg/mmapcodec/TimeMap;

    invoke-direct {v0}, Lcom/muvee/dsg/mmapcodec/TimeMap;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->A:Lcom/muvee/dsg/mmapcodec/TimeMap;

    .line 83
    iput-wide v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->d:J

    return-void
.end method

.method static synthetic a(Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;)Landroid/media/MediaExtractor;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->w:Landroid/media/MediaExtractor;

    return-object v0
.end method

.method static synthetic a(Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;Landroid/media/MediaExtractor;)Landroid/media/MediaExtractor;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->w:Landroid/media/MediaExtractor;

    return-object p1
.end method

.method private a(Lcom/muvee/dsg/mmapcodec/CodecFrameParams;)Lcom/muvee/dsg/mmapcodec/CodecFrameParams;
    .locals 12

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 362
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    const-string v1, "ProcessFrame +"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->x:Lcom/muvee/dsg/mmap/api/os/util/LockRunnable;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/os/util/LockRunnable;->get()Ljava/lang/Object;

    .line 364
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_EXCEPTION:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 366
    iput-boolean v7, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->q:Z

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->v:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mSeekMode:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    sget-object v1, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;->MV_CSM_NONE:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    if-eq v0, v1, :cond_4

    .line 370
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decoder Seek Requested with Flag Set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mSeekMode:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decoder Seek to Time is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInTimeStamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , Extractor time is  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->v:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mSeekMode:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    sget-object v1, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;->MV_CSM_PREVIOUS:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    if-ne v0, v1, :cond_2

    .line 373
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->v:Landroid/media/MediaExtractor;

    iget-wide v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInTimeStamp:J

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 379
    :goto_0
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->g:Z

    if-eqz v0, :cond_0

    .line 380
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    const-string v1, "Flushing the Decoder.. "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->k:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 383
    :cond_0
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decoder Seek Done.. Active Time is  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->v:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_BUSY:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 385
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->v:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutTimeStamp:J

    .line 621
    :cond_1
    :goto_1
    return-object p1

    .line 374
    :cond_2
    iget-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mSeekMode:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    sget-object v1, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;->MV_CSM_NEXT:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    if-ne v0, v1, :cond_3

    .line 375
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->v:Landroid/media/MediaExtractor;

    iget-wide v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInTimeStamp:J

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 524
    :catch_0
    move-exception v0

    .line 525
    sget-object v1, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "We had an Exception when handling Process Frame.. : [MV_ERROR] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 528
    :goto_2
    sget-object v1, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNextFrame - frames: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->s:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->q:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-boolean v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->q:Z

    if-eqz v1, :cond_19

    .line 534
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 535
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->isAdvancedMode()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 536
    invoke-static {}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->getInstance()Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

    move-result-object v0

    .line 537
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 538
    sget-object v2, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    const-string v3, "::processFrame: %s,%s"

    new-array v4, v9, [Ljava/lang/Object;

    .line 539
    invoke-virtual {v0}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->getCurrentThread()Ljava/lang/Thread;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object v1, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 538
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-virtual {v0}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->getCurrentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 541
    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->z:I

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->getSurfaceTexture(I)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 542
    sget-object v1, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    const-string v2, "::processFrame:updateTexImage from encoder thread"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :goto_3
    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->z:I

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->getTextureId(I)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->t:I

    .line 607
    :goto_4
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_OK:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 616
    :goto_5
    iget v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->t:I

    iput v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutTextureId:I

    .line 617
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->p:Z

    if-ne v0, v8, :cond_1b

    :goto_6
    iput v8, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mLastFrame:I

    .line 618
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->p:Z

    if-eqz v0, :cond_1

    .line 619
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_EOF:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    goto/16 :goto_1

    .line 377
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->v:Landroid/media/MediaExtractor;

    iget-wide v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInTimeStamp:J

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto/16 :goto_0

    .line 389
    :cond_4
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->isSupportFastMotion()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 390
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->w:Landroid/media/MediaExtractor;

    iget-wide v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInTimeStamp:J

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 391
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->w:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    .line 393
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->v:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-gez v0, :cond_5

    .line 394
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->v:Landroid/media/MediaExtractor;

    iget-wide v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInTimeStamp:J

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 398
    :cond_5
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->getEngine()Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 399
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->isAdvancedMode()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 413
    :cond_6
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->g:Z

    if-eqz v0, :cond_11

    .line 414
    :goto_7
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->q:Z

    if-nez v0, :cond_11

    .line 415
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->r:Z

    .line 416
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    const-string v1, "::processFrame:00"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->o:Z

    if-nez v0, :cond_c

    .line 419
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->k:Landroid/media/MediaCodec;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 423
    :goto_8
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::processFrame: inIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    if-ltz v1, :cond_8

    .line 425
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->m:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v1

    .line 427
    iget-boolean v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->o:Z

    if-nez v2, :cond_1c

    .line 428
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->v:Landroid/media/MediaExtractor;

    if-eqz v2, :cond_d

    .line 429
    sget-object v2, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Extractor time is  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->v:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine;->getEngine()Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/muvee/dsg/sdk/Engine;->isPreview()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 432
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine;->getEngine()Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine;

    move-result-object v2

    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->v:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->B:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    invoke-virtual {v2, v4, v5, v3}, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine;->useBooster(JLcom/muvee/dsg/mmapcodec/CodecInitParams;)Z

    move-result v2

    .line 433
    if-eqz v2, :cond_7

    .line 434
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->v:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v2

    if-nez v2, :cond_7

    .line 435
    sget-object v2, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    const-string v3, "::processFrame: DecoderBoosterEngine sampleTime=%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->v:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->v:Landroid/media/MediaExtractor;

    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->v:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v5, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 437
    sget-object v2, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    const-string v3, "::processFrame: DecoderBoosterEngine sampleTime=%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->v:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_7
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->v:Landroid/media/MediaExtractor;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 453
    :goto_9
    if-gtz v3, :cond_e

    .line 455
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    const-string v2, "InputBuffer BUFFER_FLAG_END_OF_STREAM"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->o:Z

    if-nez v0, :cond_8

    .line 457
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->k:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 458
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->o:Z

    .line 476
    :cond_8
    :goto_a
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    const-string v1, "::processFrame:before dequeueOutputBuffer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->k:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->n:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    .line 478
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::processFrame:after dequeueOutputBuffer, outIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->A:Lcom/muvee/dsg/mmapcodec/TimeMap;

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->n:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v2, v3}, Lcom/muvee/dsg/mmapcodec/TimeMap;->getTime(J)J

    move-result-wide v2

    .line 480
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "::processFrame:after dequeueOutputBuffer presentationTimeUs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    packed-switch v1, :pswitch_data_0

    .line 495
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Surface decoder given buffer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->n:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "awaiting decode of frame "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->s:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->n:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v0, :cond_10

    iget-wide v4, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInTimeStamp:J

    cmp-long v0, v4, v2

    if-gtz v0, :cond_10

    move v0, v8

    .line 499
    :goto_b
    iget-object v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->k:Landroid/media/MediaCodec;

    invoke-virtual {v4, v1, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 500
    if-eqz v0, :cond_9

    .line 505
    iget v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->s:I

    .line 506
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->q:Z

    .line 507
    iput-wide v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutTimeStamp:J

    .line 508
    iget-wide v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->d:J

    .line 513
    :cond_9
    :goto_c
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->n:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_a

    .line 514
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    const-string v1, "OutputBuffer BUFFER_FLAG_END_OF_STREAM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->p:Z

    .line 516
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->q:Z

    .line 519
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->r:Z

    .line 520
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    const-string v1, "GetFrameTask -"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 401
    :cond_b
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->getEngine()Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;

    move-result-object v0

    iget-wide v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInTimeStamp:J

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->B:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    invoke-virtual {v0, v2, v3, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->usePreGeneratored(JLcom/muvee/dsg/mmapcodec/CodecInitParams;)Z

    move-result v0

    .line 402
    if-eqz v0, :cond_6

    .line 403
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->getMmsaGLSurfaceView()Lcom/muvee/studio/view/MmsaGLSurfaceView;

    move-result-object v0

    .line 404
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 405
    invoke-virtual {v0}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getCurrentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 406
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->getEngine()Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->B:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    invoke-virtual {v0, p1, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->getCodecFrameParams(Lcom/muvee/dsg/mmapcodec/CodecFrameParams;Lcom/muvee/dsg/mmapcodec/CodecInitParams;)Lcom/muvee/dsg/mmapcodec/CodecFrameParams;

    move-result-object p1

    goto/16 :goto_1

    .line 421
    :cond_c
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->k:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    goto/16 :goto_8

    .line 444
    :cond_d
    iget v3, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInBufferSize:I

    .line 445
    sget-object v2, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "::processFrame:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    sget-object v2, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "::processFrame:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInBufferData:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    sget-object v2, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "::processFrame:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 449
    iget-object v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInBufferData:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 450
    iget-object v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInBufferData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto/16 :goto_9

    .line 462
    :cond_e
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->v:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_f

    .line 463
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->A:Lcom/muvee/dsg/mmapcodec/TimeMap;

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->v:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/muvee/dsg/mmapcodec/TimeMap;->pushTime(J)J

    move-result-wide v4

    .line 464
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->k:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 465
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Submitting in frame with size "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", inTimeStamp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->v:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", presentationTimeUs ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to buffer index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->v:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto/16 :goto_a

    .line 468
    :cond_f
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Submitting frame "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " to dec, size = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->k:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    iget-wide v4, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInTimeStamp:J

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 471
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Submitted frame "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to dec, size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 483
    :pswitch_0
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    const-string v1, "INFO_OUTPUT_BUFFERS_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 486
    :pswitch_1
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->k:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->l:Landroid/media/MediaFormat;

    .line 487
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Output Format is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->l:Landroid/media/MediaFormat;

    const-string v3, "color-format"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 490
    :pswitch_2
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    const-string v1, "dequeueOutputBuffer timed out!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/4 v0, 0x0

    iput v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutTextureId:I

    .line 492
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_BUSY:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_10
    move v0, v7

    .line 498
    goto/16 :goto_b

    :cond_11
    move v0, v7

    .line 527
    goto/16 :goto_2

    .line 544
    :cond_12
    sget-object v1, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    const-string v2, "::processFrame:not from encoder thread"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 548
    :cond_13
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->getMmsaGLSurfaceView()Lcom/muvee/studio/view/MmsaGLSurfaceView;

    move-result-object v1

    .line 549
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 550
    invoke-virtual {v1}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getCurrentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 551
    iget v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->z:I

    invoke-virtual {v1, v0}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getSurfaceTexture(I)Landroid/graphics/SurfaceTexture;

    move-result-object v2

    .line 552
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    const-string v3, "::processFrame: %s %s"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v2, v4, v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    monitor-enter v2

    .line 556
    :try_start_2
    iget-object v0, v1, Lcom/muvee/studio/view/MmsaGLSurfaceView;->mSurfaceFrameCount:[J

    iget v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->z:I

    aget-wide v4, v0, v3

    .line 557
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    const-string v3, "::processFrame: %d %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v6, v9

    const/4 v9, 0x1

    iget-wide v10, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->d:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v6, v9

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-wide v10, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->d:J

    cmp-long v0, v4, v10

    if-gez v0, :cond_14

    .line 559
    const-wide/16 v4, 0x1e

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 561
    :cond_14
    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 562
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    const-string v3, "::processFrame:updateTexImage from encoder thread"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 569
    :goto_d
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 571
    :cond_15
    iget v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->z:I

    invoke-virtual {v1, v0}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getTextureId(I)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->t:I

    goto/16 :goto_4

    .line 564
    :catch_1
    move-exception v0

    .line 566
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_d

    .line 569
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 577
    :cond_16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 579
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->getInstance()Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->getCurrentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 581
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->getInstance()Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->z:I

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->getSurfaceTexture(I)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 582
    monitor-enter v1

    .line 585
    :try_start_5
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->getInstance()Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;

    move-result-object v0

    iget-object v0, v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->mSurfaceFrameCount:[J

    iget v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->z:I

    aget-wide v2, v0, v2

    .line 586
    iget-wide v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->d:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_17

    .line 587
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 589
    :cond_17
    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 590
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    const-string v2, "::processFrame:updateTexImage from encoder thread"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 597
    :goto_e
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 602
    :goto_f
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->getInstance()Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->z:I

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->getTextureId(I)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->t:I

    goto/16 :goto_4

    .line 592
    :catch_2
    move-exception v0

    .line 594
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_e

    .line 597
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    .line 599
    :cond_18
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    const-string v1, "::processFrame:not from encoder thread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 609
    :cond_19
    iput v7, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->t:I

    .line 610
    if-eqz v0, :cond_1a

    .line 611
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_EXCEPTION:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    goto/16 :goto_5

    .line 613
    :cond_1a
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_BUSY:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    goto/16 :goto_5

    :cond_1b
    move v8, v7

    .line 617
    goto/16 :goto_6

    :cond_1c
    move v3, v7

    goto/16 :goto_9

    .line 481
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lcom/muvee/dsg/mmapcodec/CodecInitParams;)Lcom/muvee/dsg/mmapcodec/CodecInitParams;
    .locals 14

    .prologue
    .line 89
    iput-object p1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->B:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->d:J

    .line 93
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->isAdvancedMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    invoke-static {}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->getInstance()Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->getNextIndex()I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->z:I

    .line 106
    :goto_0
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_FAIL:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mCodecStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 107
    iget v0, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mWidth:I

    iput v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->a:I

    .line 108
    iget v0, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mHeight:I

    iput v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->b:I

    .line 109
    iget-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mCodecType:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->c:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    .line 110
    iget v0, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mMakeUsable:I

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->h:Z

    .line 111
    iget-wide v0, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mStartSeek:J

    iput-wide v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->i:J

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->g:Z

    .line 116
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 117
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->isAdvancedMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 118
    invoke-static {}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->getInstance()Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->z:I

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->getSurface(I)Landroid/view/Surface;

    move-result-object v0

    .line 127
    :goto_2
    iget-object v1, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFileName:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 128
    const-string v1, "mediaCodectextureDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received the Decoder FileName to be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->v:Landroid/media/MediaExtractor;

    .line 131
    new-instance v1, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$1;

    invoke-direct {v1, p0, p1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder$1;-><init>(Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;Lcom/muvee/dsg/mmapcodec/CodecInitParams;)V

    iput-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->x:Lcom/muvee/dsg/mmap/api/os/util/LockRunnable;

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EXTRACTOR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->x:Lcom/muvee/dsg/mmap/api/os/util/LockRunnable;

    invoke-static {v1, v2}, Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->v:Landroid/media/MediaExtractor;

    iget-object v2, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->v:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 164
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->v:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    .line 165
    const-string v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 166
    const-string/jumbo v4, "video/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 167
    iget-object v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->v:Landroid/media/MediaExtractor;

    invoke-virtual {v4, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 169
    :try_start_1
    invoke-static {v3}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->k:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 173
    :goto_4
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->k:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 205
    :cond_0
    :goto_5
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->k:Landroid/media/MediaCodec;

    if-nez v0, :cond_b

    .line 206
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    const-string v1, "Video Decoder Initialization Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_1
    :goto_6
    return-object p1

    .line 98
    :cond_2
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->getMmsaGLSurfaceView()Lcom/muvee/studio/view/MmsaGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getNextIndex()I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->z:I

    goto/16 :goto_0

    .line 102
    :cond_3
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->getInstance()Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->getNextIndex()I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->z:I

    .line 103
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->getInstance()Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;

    move-result-object v0

    iget-object v0, v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->mSurfaceFrameCount:[J

    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->z:I

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    goto/16 :goto_0

    .line 110
    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 120
    :cond_5
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->getMmsaGLSurfaceView()Lcom/muvee/studio/view/MmsaGLSurfaceView;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->z:I

    invoke-virtual {v0, v1}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getSurface(I)Landroid/view/Surface;

    move-result-object v0

    goto/16 :goto_2

    .line 124
    :cond_6
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->getInstance()Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->z:I

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->getSurface(I)Landroid/view/Surface;

    move-result-object v0

    goto/16 :goto_2

    .line 159
    :catch_0
    move-exception v0

    .line 160
    const-string v0, "mediaCodectextureDecoder"

    const-string v1, "Extractor Set Data Source failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 170
    :catch_1
    move-exception v1

    .line 171
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 163
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 188
    :cond_8
    const-string v1, "mediaCodectextureDecoder"

    const-string v2, "Received the Decoder FileName to be null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->c:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    sget-object v2, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;->MV_MEDIA_CODEC_H264:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    if-ne v1, v2, :cond_9

    .line 190
    const-string/jumbo v1, "video/avc"

    iput-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->e:Ljava/lang/String;

    .line 192
    :cond_9
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->c:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    sget-object v2, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;->MV_MEDIA_CODEC_MPEG:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    if-ne v1, v2, :cond_a

    .line 193
    const-string/jumbo v1, "video/mp4v-es"

    iput-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->e:Ljava/lang/String;

    .line 196
    :cond_a
    :try_start_2
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->k:Landroid/media/MediaCodec;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 201
    :goto_7
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->e:Ljava/lang/String;

    iget v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->a:I

    iget v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->b:I

    invoke-static {v1, v2, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->f:Landroid/media/MediaFormat;

    .line 202
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->k:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->f:Landroid/media/MediaFormat;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    goto/16 :goto_5

    .line 197
    :catch_2
    move-exception v1

    .line 198
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 210
    :cond_b
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->k:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 211
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->k:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->m:[Ljava/nio/ByteBuffer;

    .line 213
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->n:Landroid/media/MediaCodec$BufferInfo;

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->o:Z

    .line 216
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    const-string/jumbo v1, "startDecoder -"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->g:Z

    .line 218
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDecoder- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v0, 0x0

    iput v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->s:I

    .line 221
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDecoder- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_OK:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mCodecStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 224
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->A:Lcom/muvee/dsg/mmapcodec/TimeMap;

    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->isPreview()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {v1, v0}, Lcom/muvee/dsg/mmapcodec/TimeMap;->setEnable(Z)V

    .line 225
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->A:Lcom/muvee/dsg/mmapcodec/TimeMap;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmapcodec/TimeMap;->clear()V

    .line 226
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->h:Z

    if-eqz v0, :cond_1

    .line 227
    const-string v0, "TexDecoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Make Usable Active: Seek to time msec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->i:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-wide v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_c

    .line 229
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->v:Landroid/media/MediaExtractor;

    iget-wide v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->i:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 231
    :cond_c
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->k:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 233
    new-instance v9, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v9}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 235
    const/4 v0, 0x0

    .line 237
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move v7, v0

    .line 240
    :goto_9
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->o:Z

    if-nez v0, :cond_10

    .line 241
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->k:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 242
    if-ltz v1, :cond_10

    .line 244
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine;->getEngine()Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 245
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine;->getEngine()Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine;

    move-result-object v0

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->v:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->B:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    invoke-virtual {v0, v2, v3, v4}, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine;->useBooster(JLcom/muvee/dsg/mmapcodec/CodecInitParams;)Z

    move-result v0

    .line 246
    if-eqz v0, :cond_d

    .line 247
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->v:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v0

    if-nez v0, :cond_d

    .line 248
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    const-string v2, "::initCodec: DecoderBoosterEngine sampleTime=%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->v:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->v:Landroid/media/MediaExtractor;

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->v:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 250
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    const-string v2, "::initCodec: DecoderBoosterEngine sampleTime=%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->v:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_d
    aget-object v0, v8, v1

    .line 256
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->v:Landroid/media/MediaExtractor;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 257
    if-gez v3, :cond_f

    .line 258
    const-string v0, "DecodeActivity"

    const-string v2, "InputBuffer BUFFER_FLAG_END_OF_STREAM"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->k:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->o:Z

    goto/16 :goto_6

    .line 224
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_8

    .line 263
    :cond_f
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->v:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    .line 264
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->k:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->A:Lcom/muvee/dsg/mmapcodec/TimeMap;

    invoke-virtual {v6, v4, v5}, Lcom/muvee/dsg/mmapcodec/TimeMap;->pushTime(J)J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 266
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->v:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    .line 271
    :cond_10
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->k:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v9, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    .line 272
    packed-switch v0, :pswitch_data_0

    .line 286
    const-string v1, "Decode Activity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Buffer of size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->k:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 291
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->A:Lcom/muvee/dsg/mmapcodec/TimeMap;

    iget-wide v2, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v2, v3}, Lcom/muvee/dsg/mmapcodec/TimeMap;->getTime(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 292
    add-int/lit8 v0, v0, 0x1

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 293
    iget-wide v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->i:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_11

    const/4 v0, 0x1

    .line 297
    :goto_a
    iget v1, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_12

    .line 298
    const-string v0, "DecodeActivity"

    const-string v1, "ERROR! OutputBuffer BUFFER_FLAG_END_OF_STREAM in Init? File too small"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 274
    :pswitch_0
    const-string v0, "DecodeActivity"

    const-string v1, "INFO_OUTPUT_BUFFERS_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 276
    goto :goto_a

    .line 278
    :pswitch_1
    const-string v0, "DecodeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->k:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 279
    goto :goto_a

    .line 281
    :pswitch_2
    const-string v0, "DecodeActivity"

    const-string v1, "dequeueOutputBuffer timed out!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 282
    goto :goto_a

    .line 293
    :cond_11
    const/4 v0, 0x0

    goto :goto_a

    .line 302
    :cond_12
    if-eqz v0, :cond_13

    .line 303
    const-string v0, "DecodeActivity"

    const-string v1, "Decoder is ready and is giving frames."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_13
    move v7, v0

    .line 306
    goto/16 :goto_9

    .line 272
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static isTransitionPosible([I[I)Z
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 936
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/muvee/dsg/sdk/Engine;->isSingleVideoMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 967
    :cond_0
    :goto_0
    return v1

    .line 940
    :cond_1
    array-length v2, p1

    div-int/lit8 v2, v2, 0x2

    array-length v3, p0

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    new-array v5, v2, [Landroid/media/MediaCodec;

    move v3, v1

    move v2, v1

    .line 943
    :goto_1
    :try_start_0
    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 944
    const-string/jumbo v4, "video/avc"

    invoke-static {v4}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    aput-object v4, v5, v2

    .line 945
    const-string/jumbo v4, "video/avc"

    aget v6, p1, v3

    add-int/lit8 v7, v3, 0x1

    aget v7, p1, v7

    invoke-static {v4, v6, v7}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v4

    .line 946
    const-string v6, "bitrate"

    const v7, 0x7a1200

    invoke-virtual {v4, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 947
    const-string v6, "frame-rate"

    const/16 v7, 0x18

    invoke-virtual {v4, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 948
    const-string v6, "i-frame-interval"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 949
    const-string v6, "color-format"

    const v7, 0x7f000789

    invoke-virtual {v4, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 950
    aget-object v6, v5, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v6, v4, v7, v8, v9}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 951
    add-int/lit8 v4, v2, 0x1

    .line 943
    add-int/lit8 v2, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    :cond_2
    move v3, v2

    move v2, v1

    .line 954
    :goto_2
    array-length v4, p0

    if-ge v2, v4, :cond_5

    .line 955
    const-string/jumbo v4, "video/avc"

    invoke-static {v4}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 956
    if-nez v4, :cond_4

    move v0, v1

    .line 969
    :goto_3
    array-length v2, v5

    if-ge v0, v2, :cond_0

    .line 971
    :try_start_1
    aget-object v2, v5, v0

    if-eqz v2, :cond_3

    .line 972
    aget-object v2, v5, v0

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 969
    :cond_3
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 974
    :catch_0
    move-exception v2

    .line 975
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 959
    :cond_4
    :try_start_2
    const-string/jumbo v6, "video/avc"

    aget v7, p0, v2

    add-int/lit8 v8, v2, 0x1

    aget v8, p0, v8

    invoke-static {v6, v7, v8}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v6

    .line 960
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 961
    aput-object v4, v5, v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 962
    add-int/lit8 v3, v3, 0x1

    .line 954
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 969
    :cond_5
    :goto_5
    array-length v2, v5

    if-ge v1, v2, :cond_7

    .line 971
    :try_start_3
    aget-object v2, v5, v1

    if-eqz v2, :cond_6

    .line 972
    aget-object v2, v5, v1

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 969
    :cond_6
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 974
    :catch_1
    move-exception v2

    .line 975
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :cond_7
    move v1, v0

    .line 964
    goto/16 :goto_0

    .line 965
    :catch_2
    move-exception v0

    .line 966
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v1

    .line 969
    :goto_7
    array-length v2, v5

    if-ge v0, v2, :cond_0

    .line 971
    :try_start_5
    aget-object v2, v5, v0

    if-eqz v2, :cond_8

    .line 972
    aget-object v2, v5, v0

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 969
    :cond_8
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 974
    :catch_3
    move-exception v2

    .line 975
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 969
    :goto_9
    array-length v2, v5

    if-ge v1, v2, :cond_a

    .line 971
    :try_start_6
    aget-object v2, v5, v1

    if-eqz v2, :cond_9

    .line 972
    aget-object v2, v5, v1

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 969
    :cond_9
    :goto_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 974
    :catch_4
    move-exception v2

    .line 975
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    .line 969
    :cond_a
    throw v0

    :catchall_0
    move-exception v0

    goto :goto_9
.end method


# virtual methods
.method public GetOutputFormat()I
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->l:Landroid/media/MediaFormat;

    const-string v1, "color-format"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public IsEOFReached()Z
    .locals 3

    .prologue
    .line 356
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsEOFReached "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->p:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->p:Z

    return v0
.end method

.method public bIsDecoderStarted()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->g:Z

    return v0
.end method

.method public closeCodec()V
    .locals 3

    .prologue
    .line 313
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    const-string v1, "::closeCodec:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 318
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->isAdvancedMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 319
    invoke-static {}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->getInstance()Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->z:I

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->onCloseDecoder(I)V

    .line 332
    :goto_0
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->g:Z

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->k:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 334
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->k:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->v:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->v:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 338
    :cond_1
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total Decoded Frames are "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->s:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->w:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_2

    .line 342
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->w:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 350
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->g:Z

    .line 351
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    const-string v1, "CloseCodec -"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return-void

    .line 321
    :cond_3
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->getMmsaGLSurfaceView()Lcom/muvee/studio/view/MmsaGLSurfaceView;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->z:I

    invoke-virtual {v0, v1}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->onCloseDecoder(I)V

    goto :goto_0

    .line 324
    :cond_4
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->getInstance()Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->z:I

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->onCloseDecoder(I)V

    goto :goto_0
.end method

.method public getNextFrame(Lcom/muvee/dsg/mmapcodec/CodecFrameParams;)Lcom/muvee/dsg/mmapcodec/CodecFrameParams;
    .locals 1

    .prologue
    .line 930
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->a(Lcom/muvee/dsg/mmapcodec/CodecFrameParams;)Lcom/muvee/dsg/mmapcodec/CodecFrameParams;

    move-result-object v0

    return-object v0
.end method

.method public getTexture()I
    .locals 1

    .prologue
    .line 625
    iget v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->t:I

    return v0
.end method

.method public init(Lcom/muvee/dsg/mmapcodec/CodecInitParams;)Lcom/muvee/dsg/mmapcodec/CodecInitParams;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 915
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    const-string v1, "::init: start"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :try_start_0
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->a(Lcom/muvee/dsg/mmapcodec/CodecInitParams;)Lcom/muvee/dsg/mmapcodec/CodecInitParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 924
    sget-object v1, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    const-string v2, "::init: end"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v0

    .line 921
    :goto_0
    return-object p1

    .line 918
    :catch_0
    move-exception v0

    .line 919
    :try_start_1
    sget-object v1, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    const-string v2, "::init: exception"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 924
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    const-string v1, "::init: end"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoder;->j:Ljava/lang/String;

    const-string v2, "::init: end"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method
