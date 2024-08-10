.class public Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;
.super Lcom/muvee/dsg/mmapcodec/Codec;
.source "MediaCodecTextureDecoderV2.java"

# interfaces
.implements Lcom/muvee/dsg/mmapcodec/CodecConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$a;,
        Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2$CodecOutputSurface;
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field a:I

.field b:I

.field c:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

.field d:J

.field public decodedFrameData:Ljava/nio/ByteBuffer;

.field private f:Ljava/lang/String;

.field private g:Landroid/media/MediaFormat;

.field private h:Z

.field private i:Z

.field private j:J

.field private k:Landroid/media/MediaCodec;

.field private l:Landroid/media/MediaFormat;

.field private m:Landroid/media/MediaCodec$BufferInfo;

.field private n:Z

.field private volatile o:Z

.field private volatile p:Z

.field private volatile q:Z

.field private r:I

.field private s:I

.field private t:Z

.field private u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

.field private v:Z

.field private w:I

.field private x:Lcom/muvee/dsg/mmapcodec/TimeMap;

.field private y:Lcom/muvee/dsg/mmapcodec/CodecInitParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Lcom/muvee/dsg/mmapcodec/Codec;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->f:Ljava/lang/String;

    .line 45
    iput-boolean v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->h:Z

    .line 46
    iput-boolean v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->i:Z

    .line 47
    iput-wide v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->j:J

    .line 56
    iput-boolean v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->n:Z

    .line 57
    iput-boolean v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->o:Z

    .line 58
    iput-boolean v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->p:Z

    .line 59
    iput-boolean v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->q:Z

    .line 61
    iput v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->r:I

    .line 63
    iput v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->s:I

    .line 66
    iput-boolean v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->t:Z

    .line 67
    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->v:Z

    .line 74
    iput v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->w:I

    .line 76
    new-instance v0, Lcom/muvee/dsg/mmapcodec/TimeMap;

    invoke-direct {v0}, Lcom/muvee/dsg/mmapcodec/TimeMap;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->x:Lcom/muvee/dsg/mmapcodec/TimeMap;

    .line 86
    iput-wide v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->d:J

    return-void
.end method

.method private a(Lcom/muvee/dsg/mmapcodec/CodecFrameParams;)Lcom/muvee/dsg/mmapcodec/CodecFrameParams;
    .locals 12

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 378
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProcessFrame + sampleTime =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    invoke-virtual {v2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_EXCEPTION:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 382
    iput-boolean v7, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->p:Z

    .line 385
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mSeekMode:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    sget-object v1, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;->MV_CSM_NONE:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    if-eq v0, v1, :cond_4

    .line 386
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

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

    .line 387
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

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

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    invoke-virtual {v2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mSeekMode:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    sget-object v1, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;->MV_CSM_PREVIOUS:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    if-ne v0, v1, :cond_2

    .line 389
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    iget-wide v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInTimeStamp:J

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->seekTo(JI)V

    .line 395
    :goto_0
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->h:Z

    if-eqz v0, :cond_0

    .line 396
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    const-string v1, "Flushing the Decoder.. "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->k:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 399
    :cond_0
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decoder Seek Done.. Active Time is  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    invoke-virtual {v2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_BUSY:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 401
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutTimeStamp:J

    .line 642
    :cond_1
    :goto_1
    return-object p1

    .line 390
    :cond_2
    iget-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mSeekMode:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    sget-object v1, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;->MV_CSM_NEXT:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    if-ne v0, v1, :cond_3

    .line 391
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    iget-wide v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInTimeStamp:J

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->seekTo(JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 545
    :catch_0
    move-exception v0

    .line 546
    sget-object v1, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

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

    .line 549
    :goto_2
    sget-object v1, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNextFrame - frames: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->r:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->p:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-boolean v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->p:Z

    if-eqz v1, :cond_1a

    .line 555
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 556
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->isAdvancedMode()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 557
    invoke-static {}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->getInstance()Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

    move-result-object v0

    .line 558
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 559
    sget-object v2, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    const-string v3, "::processFrame: %s,%s"

    new-array v4, v9, [Ljava/lang/Object;

    .line 560
    invoke-virtual {v0}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->getCurrentThread()Ljava/lang/Thread;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object v1, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 559
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-virtual {v0}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->getCurrentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 562
    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->w:I

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->getSurfaceTexture(I)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 563
    sget-object v1, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    const-string v2, "::processFrame:updateTexImage from encoder thread"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :goto_3
    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->w:I

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->getTextureId(I)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->s:I

    .line 628
    :goto_4
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_OK:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 637
    :goto_5
    iget v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->s:I

    iput v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutTextureId:I

    .line 638
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->o:Z

    if-ne v0, v8, :cond_1c

    :goto_6
    iput v8, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mLastFrame:I

    .line 639
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->o:Z

    if-eqz v0, :cond_1

    .line 640
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_EOF:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    goto/16 :goto_1

    .line 393
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    iget-wide v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInTimeStamp:J

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v3, v1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->seekTo(JI)V

    goto/16 :goto_0

    .line 409
    :cond_4
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    iget-wide v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInTimeStamp:J

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->getSampleTimeAfterSeekTo(JI)J

    move-result-wide v0

    .line 410
    sget-object v2, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " sampleTime previousIFrame, =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    invoke-virtual {v4}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    invoke-virtual {v2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-gez v0, :cond_5

    .line 412
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    iget-wide v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInTimeStamp:J

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->seekTo(JI)V

    .line 416
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

    .line 417
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->isAdvancedMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 431
    :cond_6
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->h:Z

    if-eqz v0, :cond_12

    .line 432
    :goto_7
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->p:Z

    if-nez v0, :cond_12

    .line 433
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->q:Z

    .line 434
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    const-string v1, "::processFrame:00"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->n:Z

    if-nez v0, :cond_d

    .line 437
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->k:Landroid/media/MediaCodec;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 441
    :goto_8
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

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

    .line 442
    if-ltz v1, :cond_8

    .line 444
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->k:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 446
    iget-boolean v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->n:Z

    if-nez v2, :cond_1d

    .line 447
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    if-eqz v2, :cond_e

    .line 448
    sget-object v2, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Extractor time is  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    invoke-virtual {v4}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
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

    .line 451
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine;->getEngine()Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine;

    move-result-object v2

    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->y:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    invoke-virtual {v2, v4, v5, v3}, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine;->useBooster(JLcom/muvee/dsg/mmapcodec/CodecInitParams;)Z

    move-result v2

    .line 452
    if-eqz v2, :cond_7

    .line 453
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    invoke-virtual {v2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->getSampleFlags()I

    move-result v2

    if-nez v2, :cond_7

    .line 454
    sget-object v2, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    const-string v3, "::processFrame: DecoderBoosterEngine sampleTime=%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    invoke-virtual {v6}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v5, v3}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->seekTo(JI)V

    .line 456
    sget-object v2, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    const-string v3, "::processFrame: DecoderBoosterEngine sampleTime=%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    invoke-virtual {v6}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_7
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 472
    :goto_9
    if-gtz v3, :cond_f

    .line 474
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    const-string v2, "InputBuffer BUFFER_FLAG_END_OF_STREAM"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->n:Z

    if-nez v0, :cond_8

    .line 476
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->k:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 477
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->n:Z

    .line 495
    :cond_8
    :goto_a
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    const-string v1, "::processFrame:before dequeueOutputBuffer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->k:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->m:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    .line 497
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::processFrame:after dequeueOutputBuffer, outIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", info.presentationTimeUs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->m:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->x:Lcom/muvee/dsg/mmapcodec/TimeMap;

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->m:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v2, v3}, Lcom/muvee/dsg/mmapcodec/TimeMap;->getTime(J)J

    move-result-wide v2

    .line 499
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 500
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

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

    .line 502
    :cond_9
    packed-switch v1, :pswitch_data_0

    .line 516
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

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

    iget-object v5, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->m:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "awaiting decode of frame "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->r:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->m:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v0, :cond_11

    iget-wide v4, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInTimeStamp:J

    cmp-long v0, v4, v2

    if-gtz v0, :cond_11

    move v0, v8

    .line 520
    :goto_b
    iget-object v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->k:Landroid/media/MediaCodec;

    invoke-virtual {v4, v1, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 521
    if-eqz v0, :cond_a

    .line 526
    iget v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->r:I

    .line 527
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->p:Z

    .line 528
    iput-wide v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutTimeStamp:J

    .line 529
    iget-wide v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->d:J

    .line 534
    :cond_a
    :goto_c
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->m:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_b

    .line 535
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    const-string v1, "OutputBuffer BUFFER_FLAG_END_OF_STREAM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->o:Z

    .line 537
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->p:Z

    .line 540
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->q:Z

    .line 541
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    const-string v1, "GetFrameTask -"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 419
    :cond_c
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->getEngine()Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;

    move-result-object v0

    iget-wide v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInTimeStamp:J

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->y:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    invoke-virtual {v0, v2, v3, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->usePreGeneratored(JLcom/muvee/dsg/mmapcodec/CodecInitParams;)Z

    move-result v0

    .line 420
    if-eqz v0, :cond_6

    .line 421
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->getMmsaGLSurfaceView()Lcom/muvee/studio/view/MmsaGLSurfaceView;

    move-result-object v0

    .line 422
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 423
    invoke-virtual {v0}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getCurrentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 424
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->getEngine()Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->y:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    invoke-virtual {v0, p1, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/pregen/PreGeneratorEngine;->getCodecFrameParams(Lcom/muvee/dsg/mmapcodec/CodecFrameParams;Lcom/muvee/dsg/mmapcodec/CodecInitParams;)Lcom/muvee/dsg/mmapcodec/CodecFrameParams;

    move-result-object p1

    goto/16 :goto_1

    .line 439
    :cond_d
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->k:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    goto/16 :goto_8

    .line 463
    :cond_e
    iget v3, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInBufferSize:I

    .line 464
    sget-object v2, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

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

    .line 465
    sget-object v2, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

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

    .line 466
    sget-object v2, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

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

    .line 467
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 468
    iget-object v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInBufferData:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 469
    iget-object v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInBufferData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto/16 :goto_9

    .line 481
    :cond_f
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    if-eqz v0, :cond_10

    .line 482
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->x:Lcom/muvee/dsg/mmapcodec/TimeMap;

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    invoke-virtual {v2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/muvee/dsg/mmapcodec/TimeMap;->pushTime(J)J

    move-result-wide v4

    .line 483
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->k:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 484
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

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

    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", presentationTimeUs="

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

    .line 485
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->advance()Z

    goto/16 :goto_a

    .line 487
    :cond_10
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

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

    .line 488
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->k:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    iget-wide v4, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInTimeStamp:J

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 490
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

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

    .line 504
    :pswitch_0
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    const-string v1, "INFO_OUTPUT_BUFFERS_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 507
    :pswitch_1
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->k:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->l:Landroid/media/MediaFormat;

    .line 508
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Output Format is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->l:Landroid/media/MediaFormat;

    const-string v3, "color-format"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 511
    :pswitch_2
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    const-string v1, "dequeueOutputBuffer timed out!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const/4 v0, 0x0

    iput v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutTextureId:I

    .line 513
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_BUSY:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_11
    move v0, v7

    .line 519
    goto/16 :goto_b

    :cond_12
    move v0, v7

    .line 548
    goto/16 :goto_2

    .line 565
    :cond_13
    sget-object v1, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    const-string v2, "::processFrame:not from encoder thread"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 569
    :cond_14
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->getMmsaGLSurfaceView()Lcom/muvee/studio/view/MmsaGLSurfaceView;

    move-result-object v1

    .line 570
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 571
    invoke-virtual {v1}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getCurrentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 572
    iget v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->w:I

    invoke-virtual {v1, v0}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getSurfaceTexture(I)Landroid/graphics/SurfaceTexture;

    move-result-object v2

    .line 573
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

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

    .line 574
    monitor-enter v2

    .line 577
    :try_start_2
    iget-object v0, v1, Lcom/muvee/studio/view/MmsaGLSurfaceView;->mSurfaceFrameCount:[J

    iget v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->w:I

    aget-wide v4, v0, v3

    .line 578
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    const-string v3, "::processFrame: %d %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v6, v9

    const/4 v9, 0x1

    iget-wide v10, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->d:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v6, v9

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-wide v10, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->d:J

    cmp-long v0, v4, v10

    if-gez v0, :cond_15

    .line 580
    const-wide/16 v4, 0x1e

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 582
    :cond_15
    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 583
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    const-string v3, "::processFrame:updateTexImage from encoder thread"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 590
    :goto_d
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 592
    :cond_16
    iget v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->w:I

    invoke-virtual {v1, v0}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getTextureId(I)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->s:I

    goto/16 :goto_4

    .line 585
    :catch_1
    move-exception v0

    .line 587
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_d

    .line 590
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 598
    :cond_17
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 600
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->getInstance()Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->getCurrentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 602
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->getInstance()Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->w:I

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->getSurfaceTexture(I)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 603
    monitor-enter v1

    .line 606
    :try_start_5
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->getInstance()Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;

    move-result-object v0

    iget-object v0, v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->mSurfaceFrameCount:[J

    iget v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->w:I

    aget-wide v2, v0, v2

    .line 607
    iget-wide v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->d:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_18

    .line 608
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 610
    :cond_18
    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 611
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    const-string v2, "::processFrame:updateTexImage from encoder thread"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 618
    :goto_e
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 623
    :goto_f
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->getInstance()Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->w:I

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->getTextureId(I)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->s:I

    goto/16 :goto_4

    .line 613
    :catch_2
    move-exception v0

    .line 615
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_e

    .line 618
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    .line 620
    :cond_19
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    const-string v1, "::processFrame:not from encoder thread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 630
    :cond_1a
    iput v7, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->s:I

    .line 631
    if-eqz v0, :cond_1b

    .line 632
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_EXCEPTION:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    goto/16 :goto_5

    .line 634
    :cond_1b
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_BUSY:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    goto/16 :goto_5

    :cond_1c
    move v8, v7

    .line 638
    goto/16 :goto_6

    :cond_1d
    move v3, v7

    goto/16 :goto_9

    .line 502
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lcom/muvee/dsg/mmapcodec/CodecInitParams;)Lcom/muvee/dsg/mmapcodec/CodecInitParams;
    .locals 12

    .prologue
    .line 92
    iput-object p1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->y:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->d:J

    .line 96
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->isAdvancedMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    invoke-static {}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->getInstance()Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->getNextIndex()I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->w:I

    .line 109
    :goto_0
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_FAIL:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mCodecStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 110
    iget v0, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mWidth:I

    iput v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->a:I

    .line 111
    iget v0, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mHeight:I

    iput v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->b:I

    .line 112
    iget-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mCodecType:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->c:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    .line 113
    iget v0, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mMakeUsable:I

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->i:Z

    .line 114
    iget-wide v0, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mStartSeek:J

    iput-wide v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->j:J

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->h:Z

    .line 119
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 120
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->isAdvancedMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 121
    invoke-static {}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->getInstance()Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->w:I

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->getSurface(I)Landroid/view/Surface;

    move-result-object v0

    .line 130
    :goto_2
    iget-object v1, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFileName:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 131
    sget-object v1, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

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

    .line 132
    new-instance v1, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    invoke-direct {v1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;-><init>()V

    iput-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    iget-object v2, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    invoke-virtual {v2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->getTrackCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 167
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    invoke-virtual {v2, v1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    .line 168
    const-string v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 169
    const-string/jumbo v4, "video/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 170
    iget-object v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    invoke-virtual {v4, v1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->selectTrack(I)V

    .line 172
    :try_start_1
    invoke-static {v3}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->k:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 176
    :goto_4
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->k:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 208
    :cond_0
    :goto_5
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->k:Landroid/media/MediaCodec;

    if-nez v0, :cond_b

    .line 209
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    const-string v1, "Video Decoder Initialization Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_1
    :goto_6
    return-object p1

    .line 101
    :cond_2
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->getMmsaGLSurfaceView()Lcom/muvee/studio/view/MmsaGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getNextIndex()I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->w:I

    goto/16 :goto_0

    .line 105
    :cond_3
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->getInstance()Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->getNextIndex()I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->w:I

    .line 106
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->getInstance()Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;

    move-result-object v0

    iget-object v0, v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->mSurfaceFrameCount:[J

    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->w:I

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    goto/16 :goto_0

    .line 113
    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 123
    :cond_5
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->getMmsaGLSurfaceView()Lcom/muvee/studio/view/MmsaGLSurfaceView;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->w:I

    invoke-virtual {v0, v1}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getSurface(I)Landroid/view/Surface;

    move-result-object v0

    goto/16 :goto_2

    .line 127
    :cond_6
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->getInstance()Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->w:I

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->getSurface(I)Landroid/view/Surface;

    move-result-object v0

    goto/16 :goto_2

    .line 162
    :catch_0
    move-exception v0

    .line 163
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    const-string v1, "Extractor Set Data Source failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 173
    :catch_1
    move-exception v1

    .line 174
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 166
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 191
    :cond_8
    sget-object v1, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    const-string v2, "Received the Decoder FileName to be null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->c:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    sget-object v2, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;->MV_MEDIA_CODEC_H264:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    if-ne v1, v2, :cond_9

    .line 193
    const-string/jumbo v1, "video/avc"

    iput-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->f:Ljava/lang/String;

    .line 195
    :cond_9
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->c:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    sget-object v2, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;->MV_MEDIA_CODEC_MPEG:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    if-ne v1, v2, :cond_a

    .line 196
    const-string/jumbo v1, "video/mp4v-es"

    iput-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->f:Ljava/lang/String;

    .line 199
    :cond_a
    :try_start_2
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->k:Landroid/media/MediaCodec;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 204
    :goto_7
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->f:Ljava/lang/String;

    iget v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->a:I

    iget v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->b:I

    invoke-static {v1, v2, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->g:Landroid/media/MediaFormat;

    .line 205
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->k:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->g:Landroid/media/MediaFormat;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    goto/16 :goto_5

    .line 200
    :catch_2
    move-exception v1

    .line 201
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 213
    :cond_b
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->k:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 216
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->m:Landroid/media/MediaCodec$BufferInfo;

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->n:Z

    .line 219
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    const-string/jumbo v1, "startDecoder -"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->h:Z

    .line 221
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDecoder- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v0, 0x0

    iput v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->r:I

    .line 224
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDecoder- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_OK:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mCodecStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 228
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->x:Lcom/muvee/dsg/mmapcodec/TimeMap;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmapcodec/TimeMap;->clear()V

    .line 229
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->i:Z

    if-eqz v0, :cond_1

    .line 230
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Make Usable Active: Seek to time msec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->j:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    iget-wide v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->j:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->seekTo(JI)V

    .line 236
    new-instance v8, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v8}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 238
    const/4 v0, 0x0

    .line 240
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v7, v0

    .line 243
    :goto_8
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->n:Z

    if-nez v0, :cond_e

    .line 244
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->k:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 245
    if-ltz v1, :cond_e

    .line 247
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine;->getEngine()Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 248
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine;->getEngine()Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine;

    move-result-object v0

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    invoke-virtual {v2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->y:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    invoke-virtual {v0, v2, v3, v4}, Lcom/muvee/dsg/mmapcodec/booster/DecoderBoosterEngine;->useBooster(JLcom/muvee/dsg/mmapcodec/CodecInitParams;)Z

    move-result v0

    .line 249
    if-eqz v0, :cond_c

    .line 250
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->getSampleFlags()I

    move-result v0

    if-nez v0, :cond_c

    .line 251
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    const-string v2, "::initCodec: DecoderBoosterEngine sampleTime=%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    invoke-virtual {v2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->seekTo(JI)V

    .line 253
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    const-string v2, "::initCodec: DecoderBoosterEngine sampleTime=%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_c
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->k:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 260
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 261
    if-gez v3, :cond_d

    .line 262
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    const-string v2, "InputBuffer BUFFER_FLAG_END_OF_STREAM"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->k:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->n:Z

    goto/16 :goto_6

    .line 267
    :cond_d
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    .line 268
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->x:Lcom/muvee/dsg/mmapcodec/TimeMap;

    invoke-virtual {v0, v10, v11}, Lcom/muvee/dsg/mmapcodec/TimeMap;->pushTime(J)J

    move-result-wide v4

    .line 270
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->k:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 271
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCodec: sampleTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", presentationTimeUs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->advance()Z

    .line 277
    :cond_e
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->k:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v8, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    .line 278
    packed-switch v0, :pswitch_data_0

    .line 292
    sget-object v1, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Buffer of size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->k:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 297
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->x:Lcom/muvee/dsg/mmapcodec/TimeMap;

    iget-wide v2, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v2, v3}, Lcom/muvee/dsg/mmapcodec/TimeMap;->getTime(J)J

    move-result-wide v0

    .line 298
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 299
    sget-object v3, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initCodec: presentationTimeUs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    add-int/lit8 v0, v2, 0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 301
    iget-wide v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->j:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_f

    const/4 v0, 0x1

    .line 305
    :goto_9
    iget v1, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_10

    .line 306
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    const-string v1, "ERROR! OutputBuffer BUFFER_FLAG_END_OF_STREAM in Init? File too small"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 280
    :pswitch_0
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    const-string v1, "INFO_OUTPUT_BUFFERS_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 282
    goto :goto_9

    .line 284
    :pswitch_1
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->k:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 285
    goto :goto_9

    .line 287
    :pswitch_2
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    const-string v1, "dequeueOutputBuffer timed out!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 288
    goto :goto_9

    .line 301
    :cond_f
    const/4 v0, 0x0

    goto :goto_9

    .line 310
    :cond_10
    if-eqz v0, :cond_11

    .line 311
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    const-string v1, "Decoder is ready and is giving frames."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_11
    move v7, v0

    .line 314
    goto/16 :goto_8

    .line 278
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
    .line 33
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static isTransitionPosible([I[I)Z
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 957
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/muvee/dsg/sdk/Engine;->isSingleVideoMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 988
    :cond_0
    :goto_0
    return v1

    .line 961
    :cond_1
    array-length v2, p1

    div-int/lit8 v2, v2, 0x2

    array-length v3, p0

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    new-array v5, v2, [Landroid/media/MediaCodec;

    move v3, v1

    move v2, v1

    .line 964
    :goto_1
    :try_start_0
    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 965
    const-string/jumbo v4, "video/avc"

    invoke-static {v4}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    aput-object v4, v5, v2

    .line 966
    const-string/jumbo v4, "video/avc"

    aget v6, p1, v3

    add-int/lit8 v7, v3, 0x1

    aget v7, p1, v7

    invoke-static {v4, v6, v7}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v4

    .line 967
    const-string v6, "bitrate"

    const v7, 0x7a1200

    invoke-virtual {v4, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 968
    const-string v6, "frame-rate"

    const/16 v7, 0x18

    invoke-virtual {v4, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 969
    const-string v6, "i-frame-interval"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 970
    const-string v6, "color-format"

    const v7, 0x7f000789

    invoke-virtual {v4, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 971
    aget-object v6, v5, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v6, v4, v7, v8, v9}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 972
    add-int/lit8 v4, v2, 0x1

    .line 964
    add-int/lit8 v2, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    :cond_2
    move v3, v2

    move v2, v1

    .line 975
    :goto_2
    array-length v4, p0

    if-ge v2, v4, :cond_5

    .line 976
    const-string/jumbo v4, "video/avc"

    invoke-static {v4}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 977
    if-nez v4, :cond_4

    move v0, v1

    .line 990
    :goto_3
    array-length v2, v5

    if-ge v0, v2, :cond_0

    .line 992
    :try_start_1
    aget-object v2, v5, v0

    if-eqz v2, :cond_3

    .line 993
    aget-object v2, v5, v0

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 990
    :cond_3
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 995
    :catch_0
    move-exception v2

    .line 996
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 980
    :cond_4
    :try_start_2
    const-string/jumbo v6, "video/avc"

    aget v7, p0, v2

    add-int/lit8 v8, v2, 0x1

    aget v8, p0, v8

    invoke-static {v6, v7, v8}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v6

    .line 981
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 982
    aput-object v4, v5, v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 983
    add-int/lit8 v3, v3, 0x1

    .line 975
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 990
    :cond_5
    :goto_5
    array-length v2, v5

    if-ge v1, v2, :cond_7

    .line 992
    :try_start_3
    aget-object v2, v5, v1

    if-eqz v2, :cond_6

    .line 993
    aget-object v2, v5, v1

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 990
    :cond_6
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 995
    :catch_1
    move-exception v2

    .line 996
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :cond_7
    move v1, v0

    .line 985
    goto/16 :goto_0

    .line 986
    :catch_2
    move-exception v0

    .line 987
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v1

    .line 990
    :goto_7
    array-length v2, v5

    if-ge v0, v2, :cond_0

    .line 992
    :try_start_5
    aget-object v2, v5, v0

    if-eqz v2, :cond_8

    .line 993
    aget-object v2, v5, v0

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 990
    :cond_8
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 995
    :catch_3
    move-exception v2

    .line 996
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 990
    :goto_9
    array-length v2, v5

    if-ge v1, v2, :cond_a

    .line 992
    :try_start_6
    aget-object v2, v5, v1

    if-eqz v2, :cond_9

    .line 993
    aget-object v2, v5, v1

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 990
    :cond_9
    :goto_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 995
    :catch_4
    move-exception v2

    .line 996
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    .line 990
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
    .line 79
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->l:Landroid/media/MediaFormat;

    const-string v1, "color-format"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public IsEOFReached()Z
    .locals 3

    .prologue
    .line 372
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsEOFReached "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->o:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->o:Z

    return v0
.end method

.method public bIsDecoderStarted()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->h:Z

    return v0
.end method

.method public closeCodec()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 321
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    const-string v1, "::closeCodec:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 326
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->isAdvancedMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 327
    invoke-static {}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->getInstance()Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->w:I

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->onCloseDecoder(I)V

    .line 340
    :goto_0
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->h:Z

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->k:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 342
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->k:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 343
    iput-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->k:Landroid/media/MediaCodec;

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->release()V

    .line 347
    iput-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->u:Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;

    .line 350
    :cond_1
    iput-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->x:Lcom/muvee/dsg/mmapcodec/TimeMap;

    .line 351
    iput-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->y:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    .line 352
    iput-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->m:Landroid/media/MediaCodec$BufferInfo;

    .line 354
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total Decoded Frames are "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->h:Z

    .line 367
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    const-string v1, "CloseCodec -"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return-void

    .line 329
    :cond_2
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->getMmsaGLSurfaceView()Lcom/muvee/studio/view/MmsaGLSurfaceView;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->w:I

    invoke-virtual {v0, v1}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->onCloseDecoder(I)V

    goto :goto_0

    .line 332
    :cond_3
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->getInstance()Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->w:I

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->onCloseDecoder(I)V

    goto :goto_0
.end method

.method public getNextFrame(Lcom/muvee/dsg/mmapcodec/CodecFrameParams;)Lcom/muvee/dsg/mmapcodec/CodecFrameParams;
    .locals 1

    .prologue
    .line 951
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->a(Lcom/muvee/dsg/mmapcodec/CodecFrameParams;)Lcom/muvee/dsg/mmapcodec/CodecFrameParams;

    move-result-object v0

    return-object v0
.end method

.method public getTexture()I
    .locals 1

    .prologue
    .line 646
    iget v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->s:I

    return v0
.end method

.method public init(Lcom/muvee/dsg/mmapcodec/CodecInitParams;)Lcom/muvee/dsg/mmapcodec/CodecInitParams;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 936
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    const-string v1, "::init: start"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :try_start_0
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->a(Lcom/muvee/dsg/mmapcodec/CodecInitParams;)Lcom/muvee/dsg/mmapcodec/CodecInitParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 945
    sget-object v1, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    const-string v2, "::init: end"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v0

    .line 942
    :goto_0
    return-object p1

    .line 939
    :catch_0
    move-exception v0

    .line 940
    :try_start_1
    sget-object v1, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    const-string v2, "::init: exception"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 945
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    const-string v1, "::init: end"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderV2;->e:Ljava/lang/String;

    const-string v2, "::init: end"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method
