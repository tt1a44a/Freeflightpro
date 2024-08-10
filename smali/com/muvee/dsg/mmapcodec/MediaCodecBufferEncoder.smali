.class public Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;
.super Lcom/muvee/dsg/mmapcodec/Codec;
.source "MediaCodecBufferEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;,
        Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$c;,
        Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$a;
    }
.end annotation


# static fields
.field private static final e:Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;


# instance fields
.field a:Landroid/media/MediaCodec$BufferInfo;

.field private b:Landroid/media/MediaCodec;

.field private c:Z

.field private d:Z

.field private f:[Ljava/nio/ByteBuffer;

.field private g:[Ljava/nio/ByteBuffer;

.field private h:Ljava/nio/ByteBuffer;

.field private i:[B

.field private j:I

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;

    invoke-direct {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;-><init>()V

    sput-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->e:Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Lcom/muvee/dsg/mmapcodec/Codec;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->a:Landroid/media/MediaCodec$BufferInfo;

    .line 21
    iput-boolean v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->c:Z

    .line 22
    iput-boolean v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->d:Z

    .line 26
    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->f:[Ljava/nio/ByteBuffer;

    .line 27
    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->g:[Ljava/nio/ByteBuffer;

    .line 28
    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->h:Ljava/nio/ByteBuffer;

    .line 30
    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->i:[B

    .line 32
    iput v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->j:I

    .line 33
    iput v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->k:I

    .line 41
    return-void
.end method

.method private a(Lcom/muvee/dsg/mmapcodec/CodecFrameParams;)Lcom/muvee/dsg/mmapcodec/CodecFrameParams;
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 120
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_EXCEPTION:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 121
    iput v7, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferSize:I

    .line 123
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->d:Z

    if-nez v0, :cond_2

    .line 124
    iget v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mBufferAllocation:I

    if-lez v0, :cond_1

    .line 125
    const-string v0, "com.muvee.studio.codec.MediaCodecBufferEncoder"

    const-string v1, "Copying Config Header to Native Buffer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferData:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->i:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 133
    :goto_0
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->i:[B

    array-length v0, v0

    iput v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferSize:I

    .line 134
    const-string v0, "com.muvee.studio.codec.MediaCodecBufferEncoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending Config header Params of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->i:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "as the first frame"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;->MV_BDT_CFGHDR:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mBufferDataType:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    .line 136
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_OK:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 137
    iput-boolean v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->d:Z

    .line 202
    :cond_0
    :goto_1
    return-object p1

    .line 128
    :cond_1
    iget v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->j:I

    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->k:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->h:Ljava/nio/ByteBuffer;

    .line 129
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 130
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->h:Ljava/nio/ByteBuffer;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferData:Ljava/nio/ByteBuffer;

    .line 131
    iget-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferData:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->i:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 141
    :cond_2
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->c:Z

    if-nez v0, :cond_4

    .line 142
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->b:Landroid/media/MediaCodec;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 143
    if-ltz v1, :cond_4

    .line 145
    iget v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mLastFrame:I

    if-ne v0, v4, :cond_9

    .line 146
    const-string v0, "com.muvee.studio.codec.MediaCodecBufferEncoder"

    const-string v2, "Sending EOF to Encoder"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v6, 0x4

    .line 148
    iput-boolean v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->c:Z

    .line 150
    :goto_2
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->g:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v1

    .line 151
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 152
    const-string v2, "com.muvee.studio.codec.MediaCodecBufferEncoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InBufferData is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInBufferData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,Size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInBufferSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " TS is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInTimeStamp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Encoder can take in buffer of size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 153
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 152
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    iget v3, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInBufferSize:I

    if-ge v2, v3, :cond_3

    .line 155
    const-string v2, "com.muvee.studio.codec.MediaCodecBufferEncoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Limiting Encoder Input Buffer to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInBufferData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 157
    iget-object v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInBufferData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 159
    :cond_3
    iget-object v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInBufferData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->b:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    iget v3, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInBufferSize:I

    iget-wide v4, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInTimeStamp:J

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->b:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->a:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    .line 170
    if-ltz v0, :cond_8

    .line 171
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->f:[Ljava/nio/ByteBuffer;

    if-nez v1, :cond_5

    .line 172
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->b:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->f:[Ljava/nio/ByteBuffer;

    .line 174
    :cond_5
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->f:[Ljava/nio/ByteBuffer;

    aget-object v1, v1, v0

    .line 175
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->a:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6

    .line 176
    sget-object v1, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_BUSY:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v1, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 192
    :goto_4
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->b:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v7}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 193
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->a:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 194
    const-string v0, "com.muvee.studio.codec.MediaCodecBufferEncoder"

    const-string v1, "Encoder Sent EOF.. "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_EOF:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    goto/16 :goto_1

    .line 162
    :catch_0
    move-exception v0

    .line 163
    const-string v2, "com.muvee.studio.codec.MediaCodecBufferEncoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encoder ip sent in a result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " But failed when queing input with "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 178
    :cond_6
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->a:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 179
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->a:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->a:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 180
    iget v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mBufferAllocation:I

    if-lez v2, :cond_7

    .line 181
    iget-object v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 187
    :goto_5
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->a:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput v1, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferSize:I

    .line 188
    const-string v1, "com.muvee.studio.codec.MediaCodecBufferEncoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encoder sent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->a:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes to muxer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    sget-object v1, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_OK:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v1, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 190
    sget-object v1, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;->MV_BDT_H264:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    iput-object v1, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mBufferDataType:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvBufferDataType;

    goto/16 :goto_4

    .line 183
    :cond_7
    iget v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->j:I

    iget v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->k:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->h:Ljava/nio/ByteBuffer;

    .line 184
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->h:Ljava/nio/ByteBuffer;

    iput-object v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferData:Ljava/nio/ByteBuffer;

    .line 185
    iget-object v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 198
    :cond_8
    const-string v1, "com.muvee.studio.codec.MediaCodecBufferEncoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encoder Sent a result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_BUSY:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    goto/16 :goto_1

    :cond_9
    move v6, v7

    goto/16 :goto_2
.end method

.method private varargs declared-synchronized a(Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$a;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 215
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$1;->a:[I

    invoke-virtual {p1}, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$a;->ordinal()I

    move-result v2

    aget v1, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v1, :pswitch_data_0

    .line 223
    :goto_0
    monitor-exit p0

    return-object v0

    .line 217
    :pswitch_0
    const/4 v0, 0x0

    :try_start_1
    aget-object v0, p2, v0

    check-cast v0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->a(Lcom/muvee/dsg/mmapcodec/CodecFrameParams;)Lcom/muvee/dsg/mmapcodec/CodecFrameParams;

    move-result-object v0

    goto :goto_0

    .line 219
    :pswitch_1
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->b:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 220
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->b:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getInstance()Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->e:Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;

    return-object v0
.end method


# virtual methods
.method public closeCodec()V
    .locals 2

    .prologue
    .line 207
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$a;->b:Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->a(Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$a;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    return-void
.end method

.method public getNextFrame(Lcom/muvee/dsg/mmapcodec/CodecFrameParams;)Lcom/muvee/dsg/mmapcodec/CodecFrameParams;
    .locals 3

    .prologue
    .line 116
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$a;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$a;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->a(Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$a;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;

    return-object v0
.end method

.method public init(Lcom/muvee/dsg/mmapcodec/CodecInitParams;)Lcom/muvee/dsg/mmapcodec/CodecInitParams;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 46
    const-string v0, "com.muvee.studio.codec.MediaCodecBufferEncoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating Encoder for Config Header with w: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$c;

    invoke-direct {v0, p0, v4}, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$c;-><init>(Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$1;)V

    .line 49
    iget v1, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mBitRate:I

    iput v1, v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$c;->d:I

    .line 50
    iget v1, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mWidth:I

    iput v1, v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$c;->a:I

    .line 51
    iget v1, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mHeight:I

    iput v1, v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$c;->b:I

    .line 52
    iget v1, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFrameRate:I

    iput v1, v0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$c;->c:I

    .line 54
    new-instance v1, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;

    invoke-direct {v1, p0, v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;-><init>(Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$c;)V

    .line 56
    :cond_0
    invoke-virtual {v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->d()V

    .line 58
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    invoke-virtual {v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->b()[B

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->i:[B

    .line 66
    const-string v0, "com.muvee.studio.codec.MediaCodecBufferEncoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encoder Gave me a config Header of Size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->i:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v0, "com.muvee.studio.codec.MediaCodecBufferEncoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The Config Header is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->i:[B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :try_start_1
    invoke-virtual {v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder$b;->c()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 75
    :goto_1
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_EXCEPTION:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mCodecStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 76
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;->MV_MEDIA_TYPE_VIDEO:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mMediaType:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaType;

    .line 77
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;->MV_MEDIA_CODEC_H264:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mCodecType:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    .line 79
    iget-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mCodecType:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvMediaCodecType;->getMimeType()Ljava/lang/String;

    move-result-object v1

    .line 81
    const-string v0, "com.muvee.studio.codec.MediaCodecBufferEncoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating Encoder with w: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , h: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v0, "com.muvee.studio.codec.MediaCodecBufferEncoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encoder with bitrate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mBitRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , framerate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFrameRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v0, "com.muvee.studio.codec.MediaCodecBufferEncoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encoder with IFrame Interval : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mIFrameInterval:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mimeType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget v0, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mWidth:I

    iput v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->j:I

    .line 86
    iget v0, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mHeight:I

    iput v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->k:I

    .line 89
    :try_start_2
    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->b:Landroid/media/MediaCodec;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 94
    :goto_2
    iget v0, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mWidth:I

    iget v2, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mHeight:I

    invoke-static {v1, v0, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 95
    const-string v1, "bitrate"

    iget v2, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mBitRate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 96
    const-string v1, "frame-rate"

    iget v2, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFrameRate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 97
    const-string v1, "i-frame-interval"

    iget v2, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mIFrameInterval:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 98
    const-string v1, "color-format"

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 100
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->b:Landroid/media/MediaCodec;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v4, v4, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 102
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 104
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->a:Landroid/media/MediaCodec$BufferInfo;

    .line 105
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->g:[Ljava/nio/ByteBuffer;

    .line 107
    const-string v0, "com.muvee.studio.codec.MediaCodecBufferEncoder"

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

    .line 109
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_OK:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mCodecStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecBufferEncoder;->d:Z

    .line 111
    return-object p1

    .line 59
    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 70
    :catch_1
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 90
    :catch_2
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
