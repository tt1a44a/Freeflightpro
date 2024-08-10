.class public Lcom/muvee/dsg/mmapcodec/MediaCodecThumbDecoder;
.super Lcom/muvee/dsg/mmapcodec/Codec;
.source "MediaCodecThumbDecoder.java"

# interfaces
.implements Lcom/muvee/dsg/mmapcodec/CodecConstants;


# instance fields
.field private a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/muvee/dsg/mmapcodec/Codec;-><init>()V

    return-void
.end method


# virtual methods
.method public closeCodec()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public getNextFrame(Lcom/muvee/dsg/mmapcodec/CodecFrameParams;)Lcom/muvee/dsg/mmapcodec/CodecFrameParams;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 28
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 29
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecThumbDecoder;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget-object v0, v0, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 31
    iget-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mSeekMode:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    sget-object v2, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;->MV_CSM_NEXT:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecSeekMode;

    if-ne v0, v2, :cond_1

    .line 32
    iget-wide v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInTimeStamp:J

    const/4 v0, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 36
    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 38
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecThumbDecoder;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget v1, v1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mReqdWidth:I

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecThumbDecoder;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget v2, v2, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mReqdHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 39
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 40
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v0, v7, v3, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 42
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 44
    iget v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mBufferAllocation:I

    if-nez v0, :cond_0

    .line 45
    const-string v0, "ImageDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning!!! Direct allocation of buffer of size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferData:Ljava/nio/ByteBuffer;

    .line 48
    :cond_0
    iget-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 50
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    iput v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutBufferSize:I

    .line 51
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_OK:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 52
    return-object p1

    .line 34
    :cond_1
    iget-wide v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInTimeStamp:J

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public init(Lcom/muvee/dsg/mmapcodec/CodecInitParams;)Lcom/muvee/dsg/mmapcodec/CodecInitParams;
    .locals 1

    .prologue
    .line 20
    iput-object p1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecThumbDecoder;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    .line 21
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_OK:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mCodecStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 22
    return-object p1
.end method
