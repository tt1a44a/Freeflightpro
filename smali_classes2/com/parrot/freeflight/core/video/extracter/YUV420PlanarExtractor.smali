.class public Lcom/parrot/freeflight/core/video/extracter/YUV420PlanarExtractor;
.super Lcom/parrot/freeflight/core/video/extracter/YUV420Extractor;
.source "YUV420PlanarExtractor.java"


# instance fields
.field private mUOffset:I

.field private mVOffset:I


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
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/core/video/extracter/YUV420Extractor;-><init>(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)V

    .line 22
    iget v0, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420PlanarExtractor;->mStride:I

    iget v1, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420PlanarExtractor;->mSliceHeight:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420PlanarExtractor;->mUOffset:I

    .line 23
    iget v0, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420PlanarExtractor;->mUOffset:I

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420PlanarExtractor;->mVOffset:I

    .line 24
    return-void
.end method


# virtual methods
.method public extract(Landroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;)V
    .locals 10
    .param p1, "info"    # Landroid/media/MediaCodec$BufferInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 27
    iget v0, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420PlanarExtractor;->mStartOffset:I

    iget v1, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 28
    .local v4, "startOffset":I
    iget v0, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420PlanarExtractor;->mWidth:I

    iget v1, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420PlanarExtractor;->mHeight:I

    iget v2, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420PlanarExtractor;->mStride:I

    iget v3, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420PlanarExtractor;->mUOffset:I

    add-int v5, v4, v3

    iget v3, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420PlanarExtractor;->mUOffset:I

    add-int/2addr v3, v4

    iget v6, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420PlanarExtractor;->mVOffset:I

    add-int/2addr v6, v3

    iget-object v7, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420PlanarExtractor;->mYData:[B

    iget-object v8, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420PlanarExtractor;->mUData:[B

    iget-object v9, p0, Lcom/parrot/freeflight/core/video/extracter/YUV420PlanarExtractor;->mVData:[B

    move-object v3, p2

    invoke-static/range {v0 .. v9}, Lcom/parrot/mediacodecs/Yuv420Converter;->planarToYuvBuffers(IIILjava/nio/ByteBuffer;III[B[B[B)Z

    .line 29
    return-void
.end method
