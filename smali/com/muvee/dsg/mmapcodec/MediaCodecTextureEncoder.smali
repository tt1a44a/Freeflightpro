.class public Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;
.super Lcom/muvee/dsg/mmapcodec/Codec;
.source "MediaCodecTextureEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;,
        Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;,
        Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$a;
    }
.end annotation


# static fields
.field private static final j:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;

.field private static k:I


# instance fields
.field a:Landroid/media/MediaCodec$BufferInfo;

.field private b:I

.field private c:[B

.field private d:Z

.field private e:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

.field private f:J

.field private g:Landroid/media/MediaCodec;

.field private h:Z

.field private i:Z

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m:[Landroid/view/Surface;

.field public mSurfaceFrameCount:[J

.field private n:[Landroid/graphics/SurfaceTexture;

.field private o:[I

.field private p:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;

.field private q:Ljava/nio/ByteBuffer;

.field private r:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;

    invoke-direct {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;-><init>()V

    sput-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->j:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;

    .line 98
    const/4 v0, 0x4

    sput v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->k:I

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Lcom/muvee/dsg/mmapcodec/Codec;-><init>()V

    .line 40
    const/16 v0, 0x3059

    iput v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->b:I

    .line 42
    iput-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->c:[B

    .line 44
    iput-boolean v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->d:Z

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->f:J

    .line 53
    iput-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->a:Landroid/media/MediaCodec$BufferInfo;

    .line 55
    iput-boolean v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->h:Z

    .line 57
    iput-boolean v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->i:Z

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->l:Ljava/util/List;

    .line 126
    iput-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->p:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;)Landroid/media/MediaCodec;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->g:Landroid/media/MediaCodec;

    return-object v0
.end method

.method private a(Lcom/muvee/dsg/mmapcodec/CodecFrameParams;)Lcom/muvee/dsg/mmapcodec/CodecFrameParams;
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 350
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_EXCEPTION:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 351
    iput v6, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferSize:I

    .line 352
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->d:Z

    if-nez v0, :cond_2

    .line 353
    const-string v0, "com.muvee.studio.codec.MediaCodecTextureEncoder"

    const-string v1, "drainEncoder -> Will Send in H264 Config Header data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mBufferAllocation:I

    if-lez v0, :cond_1

    .line 355
    const-string v0, "com.muvee.studio.codec.MediaCodecTextureEncoder"

    const-string v1, "Copying Config Header to Native Buffer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferData:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->c:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 364
    :goto_0
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->c:[B

    array-length v0, v0

    iput v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferSize:I

    .line 365
    iput-boolean v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->d:Z

    .line 366
    const-string v0, "com.muvee.studio.codec.MediaCodecTextureEncoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending Config header Params of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->c:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "as the first frame"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;->MV_BDT_CFGHDR:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mBufferDataType:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    .line 368
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_OK:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 448
    :cond_0
    :goto_1
    return-object p1

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->e:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget v0, v0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mWidth:I

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->e:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget v1, v1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->q:Ljava/nio/ByteBuffer;

    .line 360
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->q:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 361
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->q:Ljava/nio/ByteBuffer;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferData:Ljava/nio/ByteBuffer;

    .line 362
    iget-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferData:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->c:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 371
    :cond_2
    const-string v0, "com.muvee.studio.codec.MediaCodecTextureEncoder"

    const-string v1, "drainEncoder -> Will Send in H264 Encoded data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mLastFrame:I

    if-ne v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->i:Z

    if-nez v0, :cond_3

    .line 377
    const-string v0, "com.muvee.studio.codec.MediaCodecTextureEncoder"

    const-string v1, "Signaling EOF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->g:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 379
    iput-boolean v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->i:Z

    .line 382
    :cond_3
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->g:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 384
    :goto_2
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->g:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->a:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    .line 385
    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    .line 387
    iget v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mLastFrame:I

    if-nez v0, :cond_4

    .line 388
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_BUSY:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    goto :goto_1

    .line 391
    :cond_4
    const-string v0, "com.muvee.studio.codec.MediaCodecTextureEncoder"

    const-string v1, "no output available, spinning to await EOS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_EOF:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    goto :goto_1

    .line 395
    :cond_5
    const/4 v2, -0x3

    if-ne v1, v2, :cond_6

    .line 397
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->g:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_2

    .line 398
    :cond_6
    const/4 v2, -0x2

    if-ne v1, v2, :cond_7

    .line 399
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->g:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    .line 400
    const-string v2, "com.muvee.studio.codec.MediaCodecTextureEncoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encoder output format changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 402
    :cond_7
    if-gez v1, :cond_8

    .line 403
    const-string v2, "com.muvee.studio.codec.MediaCodecTextureEncoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 406
    :cond_8
    aget-object v0, v0, v1

    .line 407
    if-nez v0, :cond_9

    .line 408
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encoderOutputBuffer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_9
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->a:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_a

    .line 414
    const-string v2, "com.muvee.studio.codec.MediaCodecTextureEncoder"

    const-string v3, "ignoring BUFFER_FLAG_CODEC_CONFIG"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->a:Landroid/media/MediaCodec$BufferInfo;

    iput v6, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 417
    :cond_a
    sget-object v2, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_BUSY:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 418
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->a:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v2, :cond_b

    .line 420
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->a:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 421
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->a:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->a:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 422
    iget v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mBufferAllocation:I

    if-lez v2, :cond_c

    .line 423
    iget-object v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 430
    :goto_3
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->a:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferSize:I

    .line 431
    const-string v0, "com.muvee.studio.codec.MediaCodecTextureEncoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->a:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes to muxer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_OK:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 433
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;->MV_BDT_H264:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mBufferDataType:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    .line 435
    :cond_b
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->g:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 436
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->a:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 437
    iget v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mLastFrame:I

    if-nez v0, :cond_d

    .line 438
    const-string v0, "com.muvee.studio.codec.MediaCodecTextureEncoder"

    const-string/jumbo v1, "reached end of stream unexpectedly"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :goto_4
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_EOF:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    goto/16 :goto_1

    .line 426
    :cond_c
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->e:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget v2, v2, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mWidth:I

    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->e:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget v3, v3, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mHeight:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->q:Ljava/nio/ByteBuffer;

    .line 427
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->q:Ljava/nio/ByteBuffer;

    iput-object v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferData:Ljava/nio/ByteBuffer;

    .line 428
    iget-object v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_3

    .line 440
    :cond_d
    const-string v0, "com.muvee.studio.codec.MediaCodecTextureEncoder"

    const-string v1, "end of stream reached"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private varargs declared-synchronized a(Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$a;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 463
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$4;->a:[I

    invoke-virtual {p1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$a;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v2, :pswitch_data_0

    .line 485
    :goto_0
    monitor-exit p0

    return-object v0

    .line 465
    :pswitch_0
    :try_start_1
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->d:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 466
    const-string v0, "com.muvee.studio.codec.MediaCodecTextureEncoder"

    const-string v1, "Swap Enabled.. Will generate the H264 data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-virtual {p0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->swap()V

    .line 471
    :goto_1
    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->a(Lcom/muvee/dsg/mmapcodec/CodecFrameParams;)Lcom/muvee/dsg/mmapcodec/CodecFrameParams;

    move-result-object v0

    goto :goto_0

    .line 469
    :cond_0
    const-string v0, "com.muvee.studio.codec.MediaCodecTextureEncoder"

    const-string v1, "Swap Disabled.. Will try generating the Config header"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 463
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 473
    :pswitch_1
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->d:Z

    .line 474
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->g:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V

    .line 475
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->g:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    .line 477
    :goto_2
    sget v2, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->k:I

    if-ge v1, v2, :cond_1

    .line 478
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->m:[Landroid/view/Surface;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 479
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->n:[Landroid/graphics/SurfaceTexture;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->release()V

    .line 477
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 482
    :cond_1
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->p:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;

    invoke-virtual {v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 463
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 247
    const-string v0, "com.muvee.studio.codec.MediaCodecTextureEncoder"

    const-string v2, "::createSurface:"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    sget v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->k:I

    new-array v0, v0, [Landroid/graphics/SurfaceTexture;

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->n:[Landroid/graphics/SurfaceTexture;

    .line 250
    sget v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->k:I

    new-array v0, v0, [Landroid/view/Surface;

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->m:[Landroid/view/Surface;

    .line 251
    sget v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->k:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->o:[I

    .line 252
    sget v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->k:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->mSurfaceFrameCount:[J

    .line 253
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 255
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->r:Ljava/lang/Thread;

    move v0, v1

    .line 257
    :goto_0
    sget v2, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->k:I

    if-ge v0, v2, :cond_1

    .line 258
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->l:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    new-array v2, v6, [I

    .line 260
    invoke-static {v6, v2, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 262
    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->o:[I

    aget v2, v2, v1

    aput v2, v3, v0

    .line 264
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->n:[Landroid/graphics/SurfaceTexture;

    new-instance v3, Landroid/graphics/SurfaceTexture;

    iget-object v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->o:[I

    aget v4, v4, v0

    invoke-direct {v3, v4}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    aput-object v3, v2, v0

    .line 268
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 269
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->n:[Landroid/graphics/SurfaceTexture;

    aget-object v2, v2, v0

    new-instance v3, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$2;

    invoke-direct {v3, p0, v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$2;-><init>(Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ON_FRAME_AVAIABLE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 277
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->getHandler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v4

    .line 269
    invoke-virtual {v2, v3, v4}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 289
    :goto_1
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->m:[Landroid/view/Surface;

    new-instance v3, Landroid/view/Surface;

    iget-object v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->n:[Landroid/graphics/SurfaceTexture;

    aget-object v4, v4, v0

    invoke-direct {v3, v4}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    aput-object v3, v2, v0

    .line 291
    const-string v2, "com.muvee.studio.codec.MediaCodecTextureEncoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "::createSurface:mTextureId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->o:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 279
    :cond_0
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->n:[Landroid/graphics/SurfaceTexture;

    aget-object v2, v2, v0

    new-instance v3, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$3;

    invoke-direct {v3, p0, v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$3;-><init>(Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;I)V

    invoke-virtual {v2, v3}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    goto :goto_1

    .line 293
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;)[Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->n:[Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public static computePresentationTimeNsec(JI)J
    .locals 4

    .prologue
    .line 301
    .line 302
    const-wide/32 v0, 0x3b9aca00

    mul-long/2addr v0, p0

    int-to-long v2, p2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static getInstance()Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->j:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;

    return-object v0
.end method


# virtual methods
.method public GetConfigHeader(Lcom/muvee/dsg/mmapcodec/CodecInitParams;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 70
    .line 71
    if-nez p1, :cond_0

    .line 72
    const-string v0, "com.muvee.studio.codec.MediaCodecTextureEncoder"

    const-string v1, "Null Params Passed in to get the Config header"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CodecInfo generating Params are NULL"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    new-instance v1, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;

    invoke-direct {v1, p0, p1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;-><init>(Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;Lcom/muvee/dsg/mmapcodec/CodecInitParams;)V

    .line 76
    invoke-virtual {v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 77
    const-string v1, "com.muvee.studio.codec.MediaCodecTextureEncoder"

    const-string v2, "Encoder Creation for Config Header Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_0
    return v0

    .line 81
    :cond_1
    invoke-virtual {v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->e()V

    .line 82
    invoke-virtual {v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    invoke-virtual {v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->c()[B

    move-result-object v2

    iput-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->c:[B

    .line 84
    const-string v2, "com.muvee.studio.codec.MediaCodecTextureEncoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encoder Gave me a config Header of Size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->c:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v2, "com.muvee.studio.codec.MediaCodecTextureEncoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The Config Header is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->c:[B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->c:[B

    array-length v2, v2

    if-lez v2, :cond_2

    .line 87
    const/4 v0, 0x1

    .line 90
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$b;->d()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v1

    .line 93
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public closeCodec()V
    .locals 2

    .prologue
    .line 453
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$a;->b:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->a(Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$a;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->q:Ljava/nio/ByteBuffer;

    .line 456
    return-void
.end method

.method public getCurrentThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->r:Ljava/lang/Thread;

    return-object v0
.end method

.method public getNextFrame(Lcom/muvee/dsg/mmapcodec/CodecFrameParams;)Lcom/muvee/dsg/mmapcodec/CodecFrameParams;
    .locals 3

    .prologue
    .line 297
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$a;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$a;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->a(Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$a;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;

    return-object v0
.end method

.method public getNextIndex()I
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->l:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSurface(I)Landroid/view/Surface;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->m:[Landroid/view/Surface;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSurfaceTexture(I)Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->n:[Landroid/graphics/SurfaceTexture;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getTextureId(I)I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->o:[I

    aget v0, v0, p1

    return v0
.end method

.method public init(Lcom/muvee/dsg/mmapcodec/CodecInitParams;)Lcom/muvee/dsg/mmapcodec/CodecInitParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->d:Z

    .line 133
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;->MV_MEDIA_TYPE_VIDEO:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mMediaType:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;

    .line 134
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;->MV_MEDIA_CODEC_H264:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mCodecType:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    .line 135
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->f:J

    .line 136
    iput-object p1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->e:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    .line 137
    iget-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mCodecType:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;->getMimeType()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-virtual {p0, p1}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->GetConfigHeader(Lcom/muvee/dsg/mmapcodec/CodecInitParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    const-string v0, "com.muvee.studio.codec.MediaCodecTextureEncoder"

    const-string v1, "Obtain Config Header Failed for Encoder Initialization"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Obtain Config Header For Encoder Init Failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    const-string v0, "com.muvee.studio.codec.MediaCodecTextureEncoder"

    const-string v2, "Obtain Config Header Passed, Encoder Initialization will continue"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :try_start_0
    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->g:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    iget v0, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mWidth:I

    iget v2, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mHeight:I

    invoke-static {v1, v0, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 152
    const-string v1, "bitrate"

    iget v2, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mBitRate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 154
    const-string v1, "frame-rate"

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 158
    const-string v1, "i-frame-interval"

    iget v2, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mIFrameInterval:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 159
    const-string v1, "color-format"

    const v2, 0x7f000789

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 160
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->g:Landroid/media/MediaCodec;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v3, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 161
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->g:Landroid/media/MediaCodec;

    if-nez v0, :cond_1

    .line 162
    const-string v0, "com.muvee.studio.codec.MediaCodecTextureEncoder"

    const-string v1, "Encoder Creation Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Encoder Creation failed!!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->g:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    .line 167
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->a:Landroid/media/MediaCodec$BufferInfo;

    .line 168
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->g:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 170
    new-instance v1, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;

    invoke-direct {v1, p0, v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;-><init>(Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;Landroid/view/Surface;)V

    iput-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->p:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;

    .line 171
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->p:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->b()V

    .line 173
    const-string v0, "com.muvee.studio.codec.MediaCodecTextureEncoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "::init:Thread.currentThread().getName()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-direct {p0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->a()V

    .line 176
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_OK:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mCodecStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 177
    return-object p1
.end method

.method public init(Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;Lcom/muvee/dsg/mmapcodec/MediaCodecCallBack;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 181
    new-instance v0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    invoke-direct {v0}, Lcom/muvee/dsg/mmapcodec/CodecInitParams;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->e:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    .line 182
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->e:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget v1, p1, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->frameRate:I

    iput v1, v0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFrameRate:I

    .line 183
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->f:J

    .line 184
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;->MV_MEDIA_CODEC_H264:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;->getMimeType()Ljava/lang/String;

    move-result-object v1

    .line 187
    :try_start_0
    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->g:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    iget v0, p1, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->width:I

    iget v2, p1, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->height:I

    invoke-static {v1, v0, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 192
    const-string v1, "bitrate"

    iget v2, p1, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->bitRate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 194
    const-string v1, "frame-rate"

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 198
    const-string v1, "i-frame-interval"

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 199
    const-string v1, "color-format"

    const v2, 0x7f000789

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 200
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->g:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v4, v4, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 201
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->g:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    .line 202
    const-string v0, "com.muvee.studio.codec.MediaCodecTextureEncoder"

    const-string v1, "Encoder Creation Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Encoder Creation failed!!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->g:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    .line 207
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->a:Landroid/media/MediaCodec$BufferInfo;

    .line 208
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->g:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 210
    new-instance v1, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;

    invoke-direct {v1, p0, v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;-><init>(Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;Landroid/view/Surface;)V

    iput-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->p:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;

    .line 211
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->p:Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$c;->b()V

    .line 213
    const-string v0, "com.muvee.studio.codec.MediaCodecTextureEncoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "::init:Thread.currentThread().getName()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-direct {p0}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->a()V

    .line 217
    const-string v0, "ENCODER_OUTPUT_THREAD"

    new-instance v1, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$1;

    invoke-direct {v1, p0, p2}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder$1;-><init>(Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;Lcom/muvee/dsg/mmapcodec/MediaCodecCallBack;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 244
    return-void
.end method

.method public onCloseDecoder(I)V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->l:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public signalEndOfInputStream()V
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->g:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 799
    return-void
.end method

.method public swap()V
    .locals 7

    .prologue
    const/16 v6, 0x3000

    .line 327
    .line 329
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    .line 330
    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->b:I

    invoke-static {v1}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v1

    .line 331
    const-string v2, "com.muvee.studio.codec.MediaCodecTextureEncoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "::swapForSave: display: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "surface:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 334
    iget-wide v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->f:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->f:J

    iget-object v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->e:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget v4, v4, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFrameRate:I

    invoke-static {v2, v3, v4}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureEncoder;->computePresentationTimeNsec(JI)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    move-result v2

    .line 335
    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 337
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    if-eq v2, v6, :cond_0

    .line 338
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eglPresentationTimeANDROID: EGL error: 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_0
    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 342
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    if-eq v0, v6, :cond_1

    .line 343
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eglSwapBuffers: EGL error: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 347
    :cond_1
    return-void
.end method
