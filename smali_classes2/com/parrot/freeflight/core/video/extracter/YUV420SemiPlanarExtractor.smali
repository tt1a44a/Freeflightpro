.class public Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarExtractor;
.super Lcom/parrot/freeflight/core/video/extracter/YUV420Extractor;
.source "YUV420SemiPlanarExtractor.java"


# instance fields
.field private mCrCbOffset:I


# direct methods
.method public constructor <init>(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)V
    .locals 2
    .param p1, "mediaCodecInfo"    # Landroid/media/MediaCodecInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "format"    # Landroid/media/MediaFormat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/core/video/extracter/YUV420Extractor;-><init>(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)V

    .line 21
    iget v0, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarExtractor;->mStride:I

    iget v1, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarExtractor;->mSliceHeight:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarExtractor;->mCrCbOffset:I

    .line 22
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarExtractor;->setCorrectParametersForSpecificDecoders(Landroid/media/MediaCodecInfo;)V

    .line 23
    return-void
.end method

.method private setCorrectParametersForSpecificDecoders(Landroid/media/MediaCodecInfo;)V
    .locals 4
    .param p1, "mediaCodecInfo"    # Landroid/media/MediaCodecInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v3, 0x15

    .line 31
    if-eqz p1, :cond_1

    .line 32
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "mediaCodecName":Ljava/lang/String;
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 50
    .end local v0    # "mediaCodecName":Ljava/lang/String;
    :cond_1
    :goto_1
    iget v1, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarExtractor;->mColorFormat:I

    const v2, 0x7f000100

    if-ne v1, v2, :cond_2

    .line 53
    iget v1, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarExtractor;->mCrCbOffset:I

    iget v2, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarExtractor;->mStride:I

    iget v3, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarExtractor;->mCropTop:I

    div-int/lit8 v3, v3, 0x2

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarExtractor;->mCrCbOffset:I

    .line 55
    :cond_2
    return-void

    .line 33
    .restart local v0    # "mediaCodecName":Ljava/lang/String;
    :sswitch_0
    const-string v2, "OMX.Intel.VideoDecoder.AVC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "OMX.Exynos.avc.dec"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "OMX.k3.video.decoder.avc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    .line 36
    :pswitch_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v3, :cond_1

    .line 37
    iget v1, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarExtractor;->mWidth:I

    iget v2, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarExtractor;->mHeight:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarExtractor;->mCrCbOffset:I

    .line 38
    iget v1, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarExtractor;->mWidth:I

    iput v1, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarExtractor;->mStride:I

    goto :goto_1

    .line 43
    :pswitch_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v3, :cond_1

    .line 44
    iget v1, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarExtractor;->mWidth:I

    iget v2, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarExtractor;->mHeight:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarExtractor;->mCrCbOffset:I

    .line 45
    iget v1, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarExtractor;->mWidth:I

    iput v1, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarExtractor;->mStride:I

    goto :goto_1

    .line 33
    nop

    :sswitch_data_0
    .sparse-switch
        -0x72a938eb -> :sswitch_0
        -0x4f389ee1 -> :sswitch_2
        -0xdb5edcc -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public extract(Landroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;)V
    .locals 9
    .param p1, "info"    # Landroid/media/MediaCodec$BufferInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 26
    iget v0, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarExtractor;->mStartOffset:I

    iget v1, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 27
    .local v4, "startOffset":I
    iget v0, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarExtractor;->mWidth:I

    iget v1, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarExtractor;->mHeight:I

    iget v2, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarExtractor;->mStride:I

    iget v3, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarExtractor;->mCrCbOffset:I

    add-int v5, v4, v3

    iget-object v6, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarExtractor;->mYData:[B

    iget-object v7, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarExtractor;->mUData:[B

    iget-object v8, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420SemiPlanarExtractor;->mVData:[B

    move-object v3, p2

    invoke-static/range {v0 .. v8}, Lcom/parrot/mediacodecs/Yuv420Converter;->semiPlanarToYuvBuffers(IIILjava/nio/ByteBuffer;II[B[B[B)Z

    .line 28
    return-void
.end method
