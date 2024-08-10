.class public Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;
.super Lcom/muvee/dsg/mmapcodec/Codec;
.source "MediaCodecBufferDecoder.java"

# interfaces
.implements Lcom/muvee/dsg/mmapcodec/CodecConstants;


# static fields
.field private static e:Ljava/lang/String;


# instance fields
.field a:I

.field b:I

.field c:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

.field private d:Z

.field public decodedFrameData:Ljava/nio/ByteBuffer;

.field private f:Landroid/media/MediaCodec;

.field private g:Landroid/media/MediaFormat;

.field private h:[Ljava/nio/ByteBuffer;

.field private i:[Ljava/nio/ByteBuffer;

.field private j:Ljava/nio/ByteBuffer;

.field private k:Landroid/media/MediaCodec$BufferInfo;

.field private l:Z

.field private volatile m:Z

.field private volatile n:Z

.field private o:I

.field private p:I

.field private q:Landroid/media/MediaExtractor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "MediaCodec BufferDecoder"

    sput-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Lcom/muvee/dsg/mmapcodec/Codec;-><init>()V

    .line 20
    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->d:Z

    .line 29
    iput-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->j:Ljava/nio/ByteBuffer;

    .line 32
    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->l:Z

    .line 33
    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->m:Z

    .line 34
    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->n:Z

    .line 36
    iput v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->o:I

    .line 37
    iput v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->p:I

    .line 40
    iput-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->q:Landroid/media/MediaExtractor;

    return-void
.end method

.method private a(Lcom/muvee/dsg/mmapcodec/CodecFrameParams;)Lcom/muvee/dsg/mmapcodec/CodecFrameParams;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 124
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->e:Ljava/lang/String;

    const-string v1, "ProcessFrame +"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_EXCEPTION:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 126
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferData:Ljava/nio/ByteBuffer;

    .line 127
    iput v7, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferSize:I

    .line 129
    iput-boolean v7, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->n:Z

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->q:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mSeekMode:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    sget-object v1, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;->MV_CSM_NONE:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    if-eq v0, v1, :cond_3

    .line 133
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->e:Ljava/lang/String;

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

    .line 134
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->e:Ljava/lang/String;

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

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->q:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mSeekMode:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    sget-object v1, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;->MV_CSM_PREVIOUS:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    if-ne v0, v1, :cond_1

    .line 136
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->q:Landroid/media/MediaExtractor;

    iget-wide v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInTimeStamp:J

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 142
    :goto_0
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->d:Z

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->e:Ljava/lang/String;

    const-string v1, "Flushing the Decoder.. "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->f:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 146
    :cond_0
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decoder Seek Done.. Active Time is  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->q:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_BUSY:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 148
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->q:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutTimeStamp:J

    .line 280
    :goto_1
    return-object p1

    .line 137
    :cond_1
    iget-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mSeekMode:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    sget-object v1, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;->MV_CSM_NEXT:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    if-ne v0, v1, :cond_2

    .line 138
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->q:Landroid/media/MediaExtractor;

    iget-wide v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInTimeStamp:J

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    sget-object v1, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->e:Ljava/lang/String;

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

    .line 269
    :goto_2
    sget-object v1, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNextFrame - frames: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->o:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->n:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-boolean v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->n:Z

    if-eqz v1, :cond_e

    .line 271
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_OK:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 279
    :goto_3
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->m:Z

    if-ne v0, v8, :cond_10

    :goto_4
    iput v8, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mLastFrame:I

    goto :goto_1

    .line 140
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->q:Landroid/media/MediaExtractor;

    iget-wide v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInTimeStamp:J

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto/16 :goto_0

    .line 152
    :cond_3
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->d:Z

    if-eqz v0, :cond_d

    .line 153
    :goto_5
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->n:Z

    if-nez v0, :cond_d

    .line 154
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->e:Ljava/lang/String;

    const-string v1, "::processFrame:00"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->l:Z

    if-nez v0, :cond_8

    .line 157
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->f:Landroid/media/MediaCodec;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 161
    :goto_6
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->e:Ljava/lang/String;

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

    .line 162
    if-ltz v1, :cond_4

    .line 163
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->h:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v1

    .line 165
    iget-boolean v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->l:Z

    if-nez v2, :cond_11

    .line 166
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->q:Landroid/media/MediaExtractor;

    if-eqz v2, :cond_9

    .line 167
    sget-object v2, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decoder Seek to Flag is Set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mSeekMode:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    sget-object v2, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decoder Seek to Time is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInTimeStamp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , Extractor time is  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->q:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->q:Landroid/media/MediaExtractor;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 180
    :goto_7
    if-gtz v3, :cond_a

    .line 182
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->e:Ljava/lang/String;

    const-string v2, "InputBuffer BUFFER_FLAG_END_OF_STREAM"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->f:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->l:Z

    .line 199
    :cond_4
    :goto_8
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->e:Ljava/lang/String;

    const-string v1, "::processFrame:before dequeueOutputBuffer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->f:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->k:Landroid/media/MediaCodec$BufferInfo;

    const-wide/32 v2, 0x15f90

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    .line 201
    sget-object v1, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::processFrame:after dequeueOutputBuffer, outIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    packed-switch v0, :pswitch_data_0

    .line 221
    sget-object v1, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Buffer decoder given buffer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->k:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    sget-object v1, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "awaiting decode of frame "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->o:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->k:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v1, :cond_6

    .line 225
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->i:[Ljava/nio/ByteBuffer;

    if-nez v1, :cond_5

    .line 226
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->f:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->i:[Ljava/nio/ByteBuffer;

    .line 228
    :cond_5
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->i:[Ljava/nio/ByteBuffer;

    aget-object v1, v1, v0

    .line 229
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->k:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 230
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->k:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->k:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 231
    iget v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mBufferAllocation:I

    if-lez v2, :cond_c

    .line 232
    sget-object v2, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBufferAllocation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mBufferAllocation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 242
    :goto_9
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->k:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput v1, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferSize:I

    .line 243
    sget-object v1, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->k:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes to muxer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    sget-object v1, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_OK:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v1, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 245
    sget-object v1, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;->MV_BDT_QCOMNV12:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    iput-object v1, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mBufferDataType:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    .line 247
    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->o:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->o:I

    .line 248
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->n:Z

    .line 249
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->k:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutTimeStamp:J

    .line 251
    :cond_6
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->f:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 255
    :goto_a
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->k:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    .line 256
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->e:Ljava/lang/String;

    const-string v1, "OutputBuffer BUFFER_FLAG_END_OF_STREAM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->m:Z

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->n:Z

    .line 261
    :cond_7
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->e:Ljava/lang/String;

    const-string v1, "GetFrameTask -"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 159
    :cond_8
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->f:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    goto/16 :goto_6

    .line 171
    :cond_9
    iget v3, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInBufferSize:I

    .line 172
    sget-object v2, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->e:Ljava/lang/String;

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

    .line 173
    sget-object v2, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->e:Ljava/lang/String;

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

    .line 174
    sget-object v2, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->e:Ljava/lang/String;

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

    .line 175
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 176
    iget-object v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInBufferData:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 177
    iget-object v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInBufferData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto/16 :goto_7

    .line 186
    :cond_a
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->q:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_b

    .line 187
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->f:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->q:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 188
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Submitting in frame with size "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", inTimeStamp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->q:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

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

    .line 189
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->q:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    goto/16 :goto_8

    .line 191
    :cond_b
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->e:Ljava/lang/String;

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

    .line 192
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->f:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    iget-wide v4, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInTimeStamp:J

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 194
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->e:Ljava/lang/String;

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

    goto/16 :goto_8

    .line 204
    :pswitch_0
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->e:Ljava/lang/String;

    const-string v1, "INFO_OUTPUT_BUFFERS_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->f:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->i:[Ljava/nio/ByteBuffer;

    .line 206
    const/4 v0, 0x0

    iput v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferSize:I

    .line 207
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_BUSY:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    goto/16 :goto_a

    .line 210
    :pswitch_1
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->f:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->g:Landroid/media/MediaFormat;

    .line 211
    const/4 v0, 0x0

    iput v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferSize:I

    .line 212
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Output Format is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->g:Landroid/media/MediaFormat;

    const-string v3, "color-format"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_BUSY:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    goto/16 :goto_a

    .line 216
    :pswitch_2
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->e:Ljava/lang/String;

    const-string v1, "dequeueOutputBuffer timed out!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v0, 0x0

    iput v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferSize:I

    .line 218
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_BUSY:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    goto/16 :goto_1

    .line 235
    :cond_c
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->k:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->p:I

    .line 236
    sget-object v2, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allocateDirect "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->p:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->p:I

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->j:Ljava/nio/ByteBuffer;

    .line 238
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->j:Ljava/nio/ByteBuffer;

    iput-object v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferData:Ljava/nio/ByteBuffer;

    .line 239
    sget-object v2, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decodedData "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->k:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_9

    :cond_d
    move v0, v7

    .line 268
    goto/16 :goto_2

    .line 273
    :cond_e
    if-eqz v0, :cond_f

    .line 274
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_EXCEPTION:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    goto/16 :goto_3

    .line 276
    :cond_f
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_BUSY:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    goto/16 :goto_3

    :cond_10
    move v8, v7

    .line 279
    goto/16 :goto_4

    :cond_11
    move v3, v7

    goto/16 :goto_7

    .line 202
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lcom/muvee/dsg/mmapcodec/CodecInitParams;)Lcom/muvee/dsg/mmapcodec/CodecInitParams;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 51
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_FAIL:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mCodecStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 52
    iget v0, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mWidth:I

    iput v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->a:I

    .line 53
    iget v0, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mHeight:I

    iput v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->b:I

    .line 54
    iget-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mCodecType:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->c:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    .line 55
    iput-boolean v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->d:Z

    .line 57
    iget-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->e:Ljava/lang/String;

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

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->q:Landroid/media/MediaExtractor;

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->q:Landroid/media/MediaExtractor;

    iget-object v2, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 66
    :goto_0
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->q:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->q:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    .line 68
    const-string v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 69
    const-string/jumbo v4, "video/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 70
    iget-object v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->q:Landroid/media/MediaExtractor;

    invoke-virtual {v4, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 72
    :try_start_1
    invoke-static {v3}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->f:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    :goto_1
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->f:Landroid/media/MediaCodec;

    invoke-virtual {v0, v2, v5, v5, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->f:Landroid/media/MediaCodec;

    if-nez v0, :cond_2

    .line 82
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->e:Ljava/lang/String;

    const-string v1, "Video Decoder Initialization Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_2
    return-object p1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->e:Ljava/lang/String;

    const-string v1, "Extractor Set Data Source failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 73
    :catch_1
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 66
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->f:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 87
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->f:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->h:[Ljava/nio/ByteBuffer;

    .line 89
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->k:Landroid/media/MediaCodec$BufferInfo;

    .line 90
    iput-boolean v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->l:Z

    .line 92
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->e:Ljava/lang/String;

    const-string/jumbo v2, "startDecoder -"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->d:Z

    .line 94
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startDecoder- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->d:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iput v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->o:I

    .line 96
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDecoder- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_OK:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mCodecStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    goto :goto_2
.end method

.method public static isTransitionPosible([I[I)Z
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 294
    array-length v2, p1

    div-int/lit8 v2, v2, 0x2

    array-length v3, p0

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    new-array v5, v2, [Landroid/media/MediaCodec;

    move v3, v1

    move v2, v1

    .line 297
    :goto_0
    :try_start_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 298
    const-string/jumbo v4, "video/avc"

    invoke-static {v4}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    aput-object v4, v5, v2

    .line 299
    const-string/jumbo v4, "video/avc"

    aget v6, p1, v3

    add-int/lit8 v7, v3, 0x1

    aget v7, p1, v7

    invoke-static {v4, v6, v7}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v4

    .line 300
    const-string v6, "bitrate"

    const v7, 0x7a1200

    invoke-virtual {v4, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 301
    const-string v6, "frame-rate"

    const/16 v7, 0x18

    invoke-virtual {v4, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 302
    const-string v6, "i-frame-interval"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 303
    const-string v6, "color-format"

    const v7, 0x7f000789

    invoke-virtual {v4, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 304
    aget-object v6, v5, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v6, v4, v7, v8, v9}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 305
    add-int/lit8 v4, v2, 0x1

    .line 297
    add-int/lit8 v2, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move v3, v2

    move v2, v4

    goto :goto_0

    :cond_0
    move v3, v2

    move v2, v1

    .line 308
    :goto_1
    array-length v4, p0

    if-ge v2, v4, :cond_3

    .line 309
    const-string/jumbo v4, "video/avc"

    invoke-static {v4}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    aput-object v4, v5, v3

    .line 310
    aget-object v4, v5, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    move v0, v1

    .line 322
    :goto_2
    array-length v2, v5

    if-ge v0, v2, :cond_6

    .line 324
    :try_start_1
    aget-object v2, v5, v0

    if-eqz v2, :cond_1

    .line 325
    aget-object v2, v5, v0

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 322
    :cond_1
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 327
    :catch_0
    move-exception v2

    .line 328
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 313
    :cond_2
    :try_start_2
    const-string/jumbo v4, "video/avc"

    aget v6, p0, v2

    add-int/lit8 v7, v2, 0x1

    aget v7, p0, v7

    invoke-static {v4, v6, v7}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v4

    .line 314
    aget-object v6, v5, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v4, v7, v8, v9}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 315
    add-int/lit8 v3, v3, 0x1

    .line 308
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 322
    :cond_3
    :goto_4
    array-length v2, v5

    if-ge v1, v2, :cond_5

    .line 324
    :try_start_3
    aget-object v2, v5, v1

    if-eqz v2, :cond_4

    .line 325
    aget-object v2, v5, v1

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 322
    :cond_4
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 327
    :catch_1
    move-exception v2

    .line 328
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :cond_5
    move v1, v0

    .line 320
    :cond_6
    return v1

    .line 318
    :catch_2
    move-exception v0

    .line 319
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v1

    .line 322
    :goto_6
    array-length v2, v5

    if-ge v0, v2, :cond_6

    .line 324
    :try_start_5
    aget-object v2, v5, v0

    if-eqz v2, :cond_7

    .line 325
    aget-object v2, v5, v0

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 322
    :cond_7
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 327
    :catch_3
    move-exception v2

    .line 328
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 322
    :goto_8
    array-length v2, v5

    if-ge v1, v2, :cond_9

    .line 324
    :try_start_6
    aget-object v2, v5, v1

    if-eqz v2, :cond_8

    .line 325
    aget-object v2, v5, v1

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 322
    :cond_8
    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 327
    :catch_4
    move-exception v2

    .line 328
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 322
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
    .line 43
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->g:Landroid/media/MediaFormat;

    const-string v1, "color-format"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public IsEOFReached()Z
    .locals 3

    .prologue
    .line 119
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsEOFReached "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->m:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->m:Z

    return v0
.end method

.method public bIsDecoderStarted()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->d:Z

    return v0
.end method

.method public closeCodec()V
    .locals 3

    .prologue
    .line 103
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->e:Ljava/lang/String;

    const-string v1, "::closeCodec:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->d:Z

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->f:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 107
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->f:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->q:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->q:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 111
    :cond_1
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total Decoded Frames are "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->d:Z

    .line 114
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->e:Ljava/lang/String;

    const-string v1, "CloseCodec -"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method

.method public getNextFrame(Lcom/muvee/dsg/mmapcodec/CodecFrameParams;)Lcom/muvee/dsg/mmapcodec/CodecFrameParams;
    .locals 1

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->a(Lcom/muvee/dsg/mmapcodec/CodecFrameParams;)Lcom/muvee/dsg/mmapcodec/CodecFrameParams;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/muvee/dsg/mmapcodec/CodecInitParams;)Lcom/muvee/dsg/mmapcodec/CodecInitParams;
    .locals 1

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferDecoder;->a(Lcom/muvee/dsg/mmapcodec/CodecInitParams;)Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    move-result-object v0

    return-object v0
.end method
