.class public Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;
.super Lcom/muvee/dsg/mmapcodec/Codec;
.source "MediaCodecTextureDecoderAdvance.java"

# interfaces
.implements Lcom/muvee/dsg/mmapcodec/CodecConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance$a;,
        Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance$CodecOutputSurface;
    }
.end annotation


# static fields
.field private static h:Ljava/lang/String;


# instance fields
.field a:I

.field b:I

.field c:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

.field d:J

.field public decodedFrameData:Ljava/nio/ByteBuffer;

.field private e:Ljava/lang/String;

.field private f:Landroid/media/MediaFormat;

.field private g:Z

.field private i:Landroid/media/MediaCodec;

.field private j:Landroid/media/MediaFormat;

.field private k:[Ljava/nio/ByteBuffer;

.field private l:Landroid/media/MediaCodec$BufferInfo;

.field private m:Z

.field private volatile n:Z

.field private volatile o:Z

.field private volatile p:Z

.field private q:I

.field private r:I

.field private s:Z

.field private t:Landroid/media/MediaExtractor;

.field private u:Z

.field private v:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "Video Decoder"

    sput-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Lcom/muvee/dsg/mmapcodec/Codec;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->e:Ljava/lang/String;

    .line 36
    iput-boolean v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->g:Z

    .line 45
    iput-boolean v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->m:Z

    .line 46
    iput-boolean v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->n:Z

    .line 47
    iput-boolean v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->o:Z

    .line 48
    iput-boolean v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->p:Z

    .line 50
    iput v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->q:I

    .line 52
    iput v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->r:I

    .line 55
    iput-boolean v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->s:Z

    .line 56
    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->t:Landroid/media/MediaExtractor;

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->u:Z

    .line 61
    iput v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->v:I

    .line 209
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->d:J

    return-void
.end method

.method private a(Lcom/muvee/dsg/mmapcodec/CodecFrameParams;)Lcom/muvee/dsg/mmapcodec/CodecFrameParams;
    .locals 14

    .prologue
    const/4 v9, 0x2

    const-wide/16 v12, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 213
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

    const-string v1, "ProcessFrame +"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_EXCEPTION:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 216
    iput-boolean v7, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->o:Z

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->t:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mSeekMode:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    sget-object v1, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;->MV_CSM_NONE:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    if-eq v0, v1, :cond_4

    .line 220
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

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

    .line 221
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

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

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->t:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mSeekMode:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    sget-object v1, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;->MV_CSM_PREVIOUS:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    if-ne v0, v1, :cond_2

    .line 223
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->t:Landroid/media/MediaExtractor;

    iget-wide v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInTimeStamp:J

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 229
    :goto_0
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->g:Z

    if-eqz v0, :cond_0

    .line 230
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

    const-string v1, "Flushing the Decoder.. "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->i:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 233
    :cond_0
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decoder Seek Done.. Active Time is  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->t:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_BUSY:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 235
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->t:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutTimeStamp:J

    .line 236
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->d:J

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->n:Z

    .line 427
    :cond_1
    :goto_1
    return-object p1

    .line 224
    :cond_2
    iget-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mSeekMode:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    sget-object v1, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;->MV_CSM_NEXT:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    if-ne v0, v1, :cond_3

    .line 225
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->t:Landroid/media/MediaExtractor;

    iget-wide v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInTimeStamp:J

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    sget-object v1, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

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

    .line 363
    :goto_2
    sget-object v1, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNextFrame - frames: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->q:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->o:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-boolean v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->o:Z

    if-eqz v1, :cond_17

    .line 369
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 370
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->isAdvancedMode()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 371
    invoke-static {}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->getInstance()Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

    move-result-object v0

    .line 372
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 373
    sget-object v2, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

    const-string v3, "::processFrame: %s,%s"

    new-array v4, v9, [Ljava/lang/Object;

    .line 374
    invoke-virtual {v0}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->getCurrentThread()Ljava/lang/Thread;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object v1, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 373
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {v0}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->getCurrentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 376
    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->v:I

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->getSurfaceTexture(I)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 377
    sget-object v1, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

    const-string v2, "::processFrame:updateTexImage from encoder thread"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :goto_3
    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->v:I

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->getTextureId(I)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->r:I

    .line 413
    :goto_4
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_OK:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 422
    :goto_5
    iget v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->r:I

    iput v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutTextureId:I

    .line 423
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->n:Z

    if-ne v0, v8, :cond_19

    :goto_6
    iput v8, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mLastFrame:I

    .line 424
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->n:Z

    if-eqz v0, :cond_1

    .line 425
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_EOF:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    goto/16 :goto_1

    .line 227
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->t:Landroid/media/MediaExtractor;

    iget-wide v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInTimeStamp:J

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto/16 :goto_0

    .line 241
    :cond_4
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->g:Z

    if-eqz v0, :cond_11

    .line 242
    :goto_7
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->o:Z

    if-nez v0, :cond_11

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->p:Z

    .line 244
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

    const-string v1, "::processFrame:00"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->m:Z

    if-nez v0, :cond_b

    .line 247
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->i:Landroid/media/MediaCodec;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 251
    :goto_8
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

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

    .line 252
    if-ltz v1, :cond_5

    .line 253
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->k:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v1

    .line 255
    iget-boolean v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->m:Z

    if-nez v2, :cond_1a

    .line 256
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->t:Landroid/media/MediaExtractor;

    if-eqz v2, :cond_c

    .line 257
    sget-object v2, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Extractor time is  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->t:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->t:Landroid/media/MediaExtractor;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 269
    :goto_9
    if-gtz v3, :cond_d

    .line 271
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

    const-string v2, "InputBuffer BUFFER_FLAG_END_OF_STREAM"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->m:Z

    if-nez v0, :cond_5

    .line 273
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->i:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->m:Z

    .line 298
    :cond_5
    :goto_a
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

    const-string v1, "::processFrame:before dequeueOutputBuffer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->i:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->l:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    .line 300
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::processFrame:after dequeueOutputBuffer, outIndex="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    packed-switch v2, :pswitch_data_0

    .line 316
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Surface decoder given buffer "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " (size="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->l:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "awaiting decode of frame "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->q:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

    const-string v1, "::processFrame: %d,%d,%d,%d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->l:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 321
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-wide v10, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInTimeStamp:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->l:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v10, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-wide v10, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->d:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 320
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-wide v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->d:J

    cmp-long v0, v0, v12

    if-lez v0, :cond_f

    iget-wide v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->d:J

    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->l:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_6

    iget-wide v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInTimeStamp:J

    iget-wide v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->d:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_6

    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->l:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v0, v0, v12

    if-nez v0, :cond_f

    :cond_6
    move v0, v8

    .line 328
    :goto_b
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->l:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v1, :cond_10

    iget-wide v4, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInTimeStamp:J

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->l:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v10, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v1, v4, v10

    if-lez v1, :cond_7

    if-eqz v0, :cond_10

    :cond_7
    move v1, v8

    .line 331
    :goto_c
    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->i:Landroid/media/MediaCodec;

    invoke-virtual {v3, v2, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 332
    if-eqz v1, :cond_8

    .line 337
    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->q:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->q:I

    .line 338
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->o:Z

    .line 339
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->l:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutTimeStamp:J

    .line 344
    :cond_8
    :goto_d
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->l:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_9

    .line 345
    sget-object v1, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

    const-string v2, "OutputBuffer BUFFER_FLAG_END_OF_STREAM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->n:Z

    .line 347
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->o:Z

    .line 351
    :cond_9
    if-eqz v0, :cond_a

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->n:Z

    .line 354
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->p:Z

    .line 355
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

    const-string v1, "GetFrameTask -"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 249
    :cond_b
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->i:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    goto/16 :goto_8

    .line 260
    :cond_c
    iget v3, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInBufferSize:I

    .line 261
    sget-object v2, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

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

    .line 262
    sget-object v2, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

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

    .line 263
    sget-object v2, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

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

    .line 264
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 265
    iget-object v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInBufferData:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 266
    iget-object v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInBufferData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto/16 :goto_9

    .line 278
    :cond_d
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->t:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_e

    .line 279
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->t:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    .line 280
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->i:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->t:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 281
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

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

    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->t:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to buffer index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getSampleFlags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->t:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->t:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    .line 283
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->t:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v0

    if-gez v0, :cond_5

    .line 284
    iput-wide v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->d:J

    .line 285
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->t:Landroid/media/MediaExtractor;

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto/16 :goto_a

    .line 288
    :cond_e
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

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

    .line 289
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->i:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    iget-wide v4, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInTimeStamp:J

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 291
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

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

    .line 303
    :pswitch_0
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

    const-string v1, "INFO_OUTPUT_BUFFERS_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 304
    goto/16 :goto_d

    .line 306
    :pswitch_1
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->i:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->j:Landroid/media/MediaFormat;

    .line 307
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Output Format is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->j:Landroid/media/MediaFormat;

    const-string v3, "color-format"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 308
    goto/16 :goto_d

    .line 310
    :pswitch_2
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

    const-string v1, "dequeueOutputBuffer timed out!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/4 v0, 0x0

    iput v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutTextureId:I

    .line 312
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_BUSY:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v7

    .line 314
    goto/16 :goto_d

    :cond_f
    move v0, v7

    .line 323
    goto/16 :goto_b

    :cond_10
    move v1, v7

    .line 328
    goto/16 :goto_c

    :cond_11
    move v0, v7

    .line 362
    goto/16 :goto_2

    .line 379
    :cond_12
    sget-object v1, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

    const-string v2, "::processFrame:not from encoder thread"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 383
    :cond_13
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->getMmsaGLSurfaceView()Lcom/muvee/studio/view/MmsaGLSurfaceView;

    move-result-object v0

    .line 384
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 385
    sget-object v2, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

    const-string v3, "::processFrame: %s,%s"

    new-array v4, v9, [Ljava/lang/Object;

    .line 386
    invoke-virtual {v0}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getCurrentThread()Ljava/lang/Thread;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object v1, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 385
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-virtual {v0}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getCurrentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 388
    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->v:I

    invoke-virtual {v0, v1}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getSurfaceTexture(I)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 389
    sget-object v1, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

    const-string v2, "::processFrame:updateTexImage from encoder thread"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :goto_e
    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->v:I

    invoke-virtual {v0, v1}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getTextureId(I)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->r:I

    goto/16 :goto_4

    .line 391
    :cond_14
    sget-object v1, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

    const-string v2, "::processFrame:not from encoder thread"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 399
    :cond_15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 401
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->getInstance()Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->getCurrentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 402
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->getInstance()Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->v:I

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->getSurfaceTexture(I)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 403
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

    const-string v1, "::processFrame:updateTexImage from encoder thread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :goto_f
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->getInstance()Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->v:I

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->getTextureId(I)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->r:I

    goto/16 :goto_4

    .line 405
    :cond_16
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

    const-string v1, "::processFrame:not from encoder thread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 415
    :cond_17
    iput v7, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->r:I

    .line 416
    if-eqz v0, :cond_18

    .line 417
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_EXCEPTION:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    goto/16 :goto_5

    .line 419
    :cond_18
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_BUSY:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    goto/16 :goto_5

    :cond_19
    move v8, v7

    .line 423
    goto/16 :goto_6

    :cond_1a
    move v3, v7

    goto/16 :goto_9

    .line 301
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lcom/muvee/dsg/mmapcodec/CodecInitParams;)Lcom/muvee/dsg/mmapcodec/CodecInitParams;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 73
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->isAdvancedMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    invoke-static {}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->getInstance()Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->getNextIndex()I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->v:I

    .line 85
    :goto_0
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_FAIL:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mCodecStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 86
    iget v0, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mWidth:I

    iput v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->a:I

    .line 87
    iget v0, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mHeight:I

    iput v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->b:I

    .line 88
    iget-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mCodecType:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->c:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    .line 89
    iput-boolean v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->g:Z

    .line 92
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 93
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->isAdvancedMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94
    invoke-static {}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->getInstance()Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->v:I

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->getSurface(I)Landroid/view/Surface;

    move-result-object v0

    .line 103
    :goto_1
    iget-object v1, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFileName:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 104
    const-string v1, "mediaCodectextureDecoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received the Decoder FileName to be "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->t:Landroid/media/MediaExtractor;

    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->t:Landroid/media/MediaExtractor;

    iget-object v3, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 112
    :goto_2
    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->t:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 113
    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->t:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    .line 114
    const-string v4, "mime"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 115
    const-string/jumbo v5, "video/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 116
    iget-object v5, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->t:Landroid/media/MediaExtractor;

    invoke-virtual {v5, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 118
    :try_start_1
    invoke-static {v4}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->i:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 122
    :goto_3
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->i:Landroid/media/MediaCodec;

    invoke-virtual {v1, v3, v0, v6, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 144
    :cond_0
    :goto_4
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->i:Landroid/media/MediaCodec;

    if-nez v0, :cond_9

    .line 145
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

    const-string v1, "Video Decoder Initialization Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :goto_5
    return-object p1

    .line 78
    :cond_1
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->getMmsaGLSurfaceView()Lcom/muvee/studio/view/MmsaGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getNextIndex()I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->v:I

    goto/16 :goto_0

    .line 82
    :cond_2
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->getInstance()Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->getNextIndex()I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->v:I

    goto/16 :goto_0

    .line 96
    :cond_3
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->getMmsaGLSurfaceView()Lcom/muvee/studio/view/MmsaGLSurfaceView;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->v:I

    invoke-virtual {v0, v1}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getSurface(I)Landroid/view/Surface;

    move-result-object v0

    goto/16 :goto_1

    .line 100
    :cond_4
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->getInstance()Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->v:I

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->getSurface(I)Landroid/view/Surface;

    move-result-object v0

    goto/16 :goto_1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    const-string v0, "mediaCodectextureDecoder"

    const-string v1, "Extractor Set Data Source failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 119
    :catch_1
    move-exception v1

    .line 120
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 112
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 127
    :cond_6
    const-string v1, "mediaCodectextureDecoder"

    const-string v3, "Received the Decoder FileName to be null"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->c:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    sget-object v3, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;->MV_MEDIA_CODEC_H264:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    if-ne v1, v3, :cond_7

    .line 129
    const-string/jumbo v1, "video/avc"

    iput-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->e:Ljava/lang/String;

    .line 131
    :cond_7
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->c:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    sget-object v3, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;->MV_MEDIA_CODEC_MPEG:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    if-ne v1, v3, :cond_8

    .line 132
    const-string/jumbo v1, "video/mp4v-es"

    iput-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->e:Ljava/lang/String;

    .line 135
    :cond_8
    :try_start_2
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->i:Landroid/media/MediaCodec;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 140
    :goto_6
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->e:Ljava/lang/String;

    iget v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->a:I

    iget v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->b:I

    invoke-static {v1, v3, v4}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->f:Landroid/media/MediaFormat;

    .line 141
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->i:Landroid/media/MediaCodec;

    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->f:Landroid/media/MediaFormat;

    invoke-virtual {v1, v3, v0, v6, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    goto/16 :goto_4

    .line 136
    :catch_2
    move-exception v1

    .line 137
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 149
    :cond_9
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->i:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 150
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->i:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->k:[Ljava/nio/ByteBuffer;

    .line 152
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->l:Landroid/media/MediaCodec$BufferInfo;

    .line 153
    iput-boolean v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->m:Z

    .line 155
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

    const-string/jumbo v1, "startDecoder -"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->g:Z

    .line 157
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startDecoder- "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->g:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iput v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->q:I

    .line 160
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDecoder- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_OK:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mCodecStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    goto/16 :goto_5
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static isTransitionPosible([I[I)Z
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 730
    array-length v2, p1

    div-int/lit8 v2, v2, 0x2

    array-length v3, p0

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    new-array v5, v2, [Landroid/media/MediaCodec;

    move v3, v1

    move v2, v1

    .line 733
    :goto_0
    :try_start_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 734
    const-string/jumbo v4, "video/avc"

    invoke-static {v4}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    aput-object v4, v5, v2

    .line 735
    const-string/jumbo v4, "video/avc"

    aget v6, p1, v3

    add-int/lit8 v7, v3, 0x1

    aget v7, p1, v7

    invoke-static {v4, v6, v7}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v4

    .line 736
    const-string v6, "bitrate"

    const v7, 0x7a1200

    invoke-virtual {v4, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 737
    const-string v6, "frame-rate"

    const/16 v7, 0x18

    invoke-virtual {v4, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 738
    const-string v6, "i-frame-interval"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 739
    const-string v6, "color-format"

    const v7, 0x7f000789

    invoke-virtual {v4, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 740
    aget-object v6, v5, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v6, v4, v7, v8, v9}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 741
    add-int/lit8 v4, v2, 0x1

    .line 733
    add-int/lit8 v2, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move v3, v2

    move v2, v4

    goto :goto_0

    :cond_0
    move v3, v2

    move v2, v1

    .line 744
    :goto_1
    array-length v4, p0

    if-ge v2, v4, :cond_3

    .line 745
    const-string/jumbo v4, "video/avc"

    invoke-static {v4}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    aput-object v4, v5, v3

    .line 746
    aget-object v4, v5, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    move v0, v1

    .line 758
    :goto_2
    array-length v2, v5

    if-ge v0, v2, :cond_6

    .line 760
    :try_start_1
    aget-object v2, v5, v0

    if-eqz v2, :cond_1

    .line 761
    aget-object v2, v5, v0

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 758
    :cond_1
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 763
    :catch_0
    move-exception v2

    .line 764
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 749
    :cond_2
    :try_start_2
    const-string/jumbo v4, "video/avc"

    aget v6, p0, v2

    add-int/lit8 v7, v2, 0x1

    aget v7, p0, v7

    invoke-static {v4, v6, v7}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v4

    .line 750
    aget-object v6, v5, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v4, v7, v8, v9}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 751
    add-int/lit8 v3, v3, 0x1

    .line 744
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 758
    :cond_3
    :goto_4
    array-length v2, v5

    if-ge v1, v2, :cond_5

    .line 760
    :try_start_3
    aget-object v2, v5, v1

    if-eqz v2, :cond_4

    .line 761
    aget-object v2, v5, v1

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 758
    :cond_4
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 763
    :catch_1
    move-exception v2

    .line 764
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :cond_5
    move v1, v0

    .line 756
    :cond_6
    return v1

    .line 754
    :catch_2
    move-exception v0

    .line 755
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v1

    .line 758
    :goto_6
    array-length v2, v5

    if-ge v0, v2, :cond_6

    .line 760
    :try_start_5
    aget-object v2, v5, v0

    if-eqz v2, :cond_7

    .line 761
    aget-object v2, v5, v0

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 758
    :cond_7
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 763
    :catch_3
    move-exception v2

    .line 764
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 758
    :goto_8
    array-length v2, v5

    if-ge v1, v2, :cond_9

    .line 760
    :try_start_6
    aget-object v2, v5, v1

    if-eqz v2, :cond_8

    .line 761
    aget-object v2, v5, v1

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 758
    :cond_8
    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 763
    :catch_4
    move-exception v2

    .line 764
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 758
    :cond_9
    throw v0

    :catchall_0
    move-exception v0

    goto :goto_8
.end method


# virtual methods
.method public GetOutputFormat()I
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->j:Landroid/media/MediaFormat;

    const-string v1, "color-format"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public IsEOFReached()Z
    .locals 3

    .prologue
    .line 205
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsEOFReached "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->n:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->n:Z

    return v0
.end method

.method public bIsDecoderStarted()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->g:Z

    return v0
.end method

.method public closeCodec()V
    .locals 3

    .prologue
    .line 167
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

    const-string v1, "::closeCodec:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->isAdvancedMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    invoke-static {}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->getInstance()Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->v:I

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmapegl/EGLHelplerUtil;->onCloseDecoder(I)V

    .line 186
    :goto_0
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->g:Z

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->i:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 188
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->i:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->t:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->t:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 192
    :cond_1
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total Decoded Frames are "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->g:Z

    .line 200
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->h:Ljava/lang/String;

    const-string v1, "CloseCodec -"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void

    .line 175
    :cond_2
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->getMmsaGLSurfaceView()Lcom/muvee/studio/view/MmsaGLSurfaceView;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->v:I

    invoke-virtual {v0, v1}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->onCloseDecoder(I)V

    goto :goto_0

    .line 178
    :cond_3
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->getInstance()Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->v:I

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->onCloseDecoder(I)V

    goto :goto_0
.end method

.method public getNextFrame(Lcom/muvee/dsg/mmapcodec/CodecFrameParams;)Lcom/muvee/dsg/mmapcodec/CodecFrameParams;
    .locals 1

    .prologue
    .line 726
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->a(Lcom/muvee/dsg/mmapcodec/CodecFrameParams;)Lcom/muvee/dsg/mmapcodec/CodecFrameParams;

    move-result-object v0

    return-object v0
.end method

.method public getTexture()I
    .locals 1

    .prologue
    .line 431
    iget v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->r:I

    return v0
.end method

.method public init(Lcom/muvee/dsg/mmapcodec/CodecInitParams;)Lcom/muvee/dsg/mmapcodec/CodecInitParams;
    .locals 1

    .prologue
    .line 721
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderAdvance;->a(Lcom/muvee/dsg/mmapcodec/CodecInitParams;)Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    move-result-object v0

    return-object v0
.end method
